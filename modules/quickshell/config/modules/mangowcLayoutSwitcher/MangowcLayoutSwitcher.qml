import QtQuick
import Quickshell
import Quickshell.Io
import qs.settings

Item {
    id: root
    
    property var pluginApi: null
    
    visible: true
    
    // Toggle function for IPC
    IpcHandler {
        target: "plugin:mangowc-layout-switcher"
        function toggle() {
            if (pluginApi) {
                pluginApi.withCurrentScreen(screen => {
                    pluginApi.openPanel(screen)
                })
            }
        }
    }
    
    Component.onCompleted: {
        refresh()
    }
    
    // Public data
    property var monitorLayouts: ({})
    property var availableLayouts: []
    property var availableMonitors: []
    
    // Layout name mapping based on 'mmsg -L' output
    readonly property var layoutNames: ({
        "S": "Scroller",
        "T": "Tile",
        "G": "Grid",
        "M": "Monocle",
        "K": "Deck",
        "CT": "Center Tile",
        "RT": "Right Tile",
        "VS": "Vertical Scroller",
        "VT": "Vertical Tile",
        "VG": "Vertical Grid",
        "VK": "Vertical Deck",
        "TG": "Tgmix"
    })
    
    function getLayoutName(code) {
        if (root.layoutNames[code]) return root.layoutNames[code]
        return code.replace(/_/g, " ").replace(/\b\w/g, c => c.toUpperCase())
    }
    
    // Internal logic
    QtObject {
        id: internal
        function updateLayout(monitor, layout) {
            if (layout && monitor) {
                var cleanLayout = layout.trim()
                if (root.monitorLayouts[monitor] !== cleanLayout) {
                    root.monitorLayouts[monitor] = cleanLayout
                    root.monitorLayoutsChanged()
                }
            }
        }
    }
    
    // Process: Event watcher for realtime updates
    Process {
        id: eventWatcher
        command: ["mmsg", "-w"]
        running: true
        
        stdout: SplitParser {
            onRead: line => {
                if (line.includes(" layout ")) {
                    var match = line.match(/^(\S+)\s+layout\s+(\S+)$/)
                    if (match) {
                        internal.updateLayout(match[1], match[2])
                    }
                }
            }
        }
    }
    
    // Process: Load available layouts
    Process {
        id: layoutsQuery
        command: ["mmsg", "-L"]
        running: false
        property var tempArray: []
        
        stdout: SplitParser {
            onRead: line => {
                const code = line.trim()
                if (code && !layoutsQuery.tempArray.some(l => l.code === code)) {
                    layoutsQuery.tempArray.push({ code: code, name: root.getLayoutName(code) })
                }
            }
        }
        
        onExited: exitCode => {
            if (exitCode === 0) root.availableLayouts = layoutsQuery.tempArray
            layoutsQuery.tempArray = []
        }
    }
    
    // Process: Load monitors
    Process {
        id: monitorsQuery
        command: ["mmsg", "-O"]
        running: false
        property var tempArray: []
        
        stdout: SplitParser {
            onRead: line => {
                const m = line.trim()
                if (m && !monitorsQuery.tempArray.includes(m)) {
                    monitorsQuery.tempArray.push(m)
                }
            }
        }
        
        onExited: exitCode => {
            if (exitCode === 0) root.availableMonitors = monitorsQuery.tempArray
            monitorsQuery.tempArray = []
        }
    }
    
    // Public API
    function refresh() {
        layoutsQuery.running = true
        monitorsQuery.running = true
        if (!eventWatcher.running) eventWatcher.running = true
    }
    
    function setLayout(monitorName, layoutCode) {
        if (!monitorName || !layoutCode) return
        Quickshell.execDetached(["mmsg", "-o", monitorName, "-s", "-l", layoutCode])
        internal.updateLayout(monitorName, layoutCode)
    }
    
    function setLayoutGlobally(layoutCode) {
        root.availableMonitors.forEach(m => setLayout(m, layoutCode))
        // Show notification using quickshell's notification system if available
        console.log("Global layout set: " + layoutCode)
    }
}
