pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import qs.settings
import qs.components.animations

Item {
    id: root
    visible: false
    
    // Keybinds data structure
    readonly property var keybinds: [
        { category: "General", shortcuts: [
            { keys: "Super+R", action: "Reload config" },
            { keys: "Super+Shift+Return", action: "Open launcher" },
            { keys: "Super+Return", action: "Open terminal" },
            { keys: "Super+L", action: "Lock screen" },
            { keys: "Super+C", action: "Control center" },
            { keys: "Super+S", action: "Settings" },
            { keys: "Super+H", action: "Clipboard history" },
        ]},
        { category: "Window Management", shortcuts: [
            { keys: "Super+Q", action: "Close window" },
            { keys: "Super+T", action: "Toggle floating" },
            { keys: "Super+F", action: "Toggle fullscreen" },
            { keys: "Super+Tab", action: "Focus next" },
            { keys: "Super+Arrows", action: "Focus direction" },
            { keys: "Super+Shift+Arrows", action: "Move window" },
        ]},
        { category: "Workspaces", shortcuts: [
            { keys: "Super+1-9", action: "Switch workspace" },
            { keys: "Ctrl+1-9", action: "Move to workspace" },
            { keys: "Alt+Left/Right", action: "Navigate workspaces" },
        ]},
        { category: "Layouts", shortcuts: [
            { keys: "Super+Shift+Space", action: "Switch layout" },
            { keys: "Super+Space", action: "Toggle overview" },
        ]},
    ]
    
    property int currentCategory: 0
    
    signal open()
    signal close()
    signal toggle()
    
    // IPC handler
    IpcHandler {
        target: "cheatsheet"
        
        function toggle(): void {
            root.visible = !root.visible
        }
        
        function close(): void {
            root.visible = false
        }
        
        function open(): void {
            root.visible = true
        }
    }
    
    // Global shortcut (optional - can be configured in mangowc bindings)
    Shortcut {
        enabled: root.visible
        sequence: "Escape"
        onActivated: root.visible = false
    }
    
    Keys.onPressed: event => {
        if (event.key === Qt.Key_Escape) {
            root.visible = false
        }
    }
}
