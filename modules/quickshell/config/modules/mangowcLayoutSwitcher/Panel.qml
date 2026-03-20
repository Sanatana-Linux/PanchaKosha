import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings
import qs.components.animations

Item {
    id: root
    
    property var pluginApi: null
    property ShellScreen currentScreen
    readonly property var geometryPlaceholder: root
    readonly property bool allowAttach: true
    
    anchors.fill: parent
    
    // Settings
    property var cfg: pluginApi?.pluginSettings || {}
    property var defaults: pluginApi?.manifest?.metadata?.defaultSettings || {}
    
    // Persisted monitor order
    property var savedMonitorOrder: cfg.monitorOrder ?? defaults.monitorOrder ?? []
    
    // Ordered monitor list
    property var orderedMonitors: {
        var all = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.availableMonitors)
            ? pluginApi.mainInstance.availableMonitors
            : []
        var order = root.savedMonitorOrder
        
        if (!order || order.length === 0) return all
        
        var result = []
        for (var i = 0; i < order.length; i++) {
            if (all.indexOf(order[i]) !== -1) result.push(order[i])
        }
        for (var j = 0; j < all.length; j++) {
            if (order.indexOf(all[j]) === -1) result.push(all[j])
        }
        return result
    }
    
    function applyMonitorReorder(fromIndex, toIndex) {
        if (fromIndex === toIndex) return
        var newOrder = root.orderedMonitors.slice()
        var item = newOrder.splice(fromIndex, 1)[0]
        newOrder.splice(toIndex, 0, item)
        
        if (pluginApi) {
            pluginApi.pluginSettings.monitorOrder = newOrder
            pluginApi.saveSettings()
        }
        root.savedMonitorOrder = newOrder
    }
    
    // Data & mapping
    readonly property string panelMonitor: {
        if (currentScreen && currentScreen.name) return currentScreen.name
        if (pluginApi && pluginApi.currentScreen && pluginApi.currentScreen.name) return pluginApi.currentScreen.name
        if (root.orderedMonitors.length > 0) return root.orderedMonitors[0]
        return ""
    }
    
    readonly property var layouts: (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.availableLayouts)
        ? pluginApi.mainInstance.availableLayouts
        : []
    
    readonly property string activeLayout: {
        var layoutsDict = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.monitorLayouts)
            ? pluginApi.mainInstance.monitorLayouts
            : {}
        return layoutsDict[root.selectedMonitors[0] || root.panelMonitor] || ""
    }
    
    readonly property var iconMap: ({
        "T": "layout-sidebar",
        "M": "rectangle",
        "S": "carousel-horizontal",
        "G": "layout-grid",
        "K": "versions",
        "RT": "layout-sidebar-right",
        "CT": "layout-distribute-vertical",
        "TG": "layout-dashboard",
        "VT": "layout-rows",
        "VS": "carousel-vertical",
        "VG": "grid-dots",
        "VK": "chart-funnel"
    })
    
    property bool applyToAll: false
    property var selectedMonitors: []
    property real contentPreferredWidth: 360
    property real contentPreferredHeight: panelContent.implicitHeight + 24
    
    function toggleMonitor(monitorName) {
        if (root.selectedMonitors.includes(monitorName)) {
            root.selectedMonitors = root.selectedMonitors.filter(m => m !== monitorName)
        } else {
            root.selectedMonitors = root.selectedMonitors.concat([monitorName])
        }
    }
    
    Component.onCompleted: {
        if (pluginApi && pluginApi.mainInstance) {
            pluginApi.mainInstance.refresh()
        }
    }
    
    // Background Click Catcher
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (pluginApi) pluginApi.closePanel()
        }
    }
    
    // Panel Window Surface
    Rectangle {
        anchors.centerIn: parent
        width: root.contentPreferredWidth
        height: root.contentPreferredHeight
        color: Colors.bg_1
        radius: 12
        border.width: 1
        border.color: Colors.bg_2
        
        ColumnLayout {
            id: panelContent
            anchors.fill: parent
            anchors.margins: 16
            spacing: 12
            
            // Header
            Rectangle {
                Layout.fillWidth: true
                implicitHeight: headerRow.implicitHeight + 16
                color: "transparent"
                
                RowLayout {
                    id: headerRow
                    anchors.fill: parent
                    anchors.margins: 8
                    spacing: 8
                    
                    Text {
                        text: "layout-grid"
                        font.pixelSize: 20
                        font.family: Fonts.iconFont
                        color: Colors.text
                    }
                    
                    Text {
                        text: "Switch Layout"
                        font.pixelSize: 18
                        font.weight: Font.Bold
                        color: Colors.text
                        Layout.fillWidth: true
                    }
                }
            }
            
            // Apply to all toggle
            RowLayout {
                Layout.fillWidth: true
                
                Text {
                    text: "Apply to all monitors"
                    font.pixelSize: 14
                    color: Colors.textSubdued
                    Layout.fillWidth: true
                }
                
                Rectangle {
                    width: 40
                    height: 24
                    radius: 12
                    color: root.applyToAll ? Colors.blue : Colors.bg_2
                    border.width: 1
                    border.color: root.applyToAll ? Colors.blue : Colors.bg_2
                    
                    Rectangle {
                        width: 18
                        height: 18
                        radius: 9
                        color: Colors.bg
                        anchors.verticalCenter: parent.verticalCenter
                        x: root.applyToAll ? parent.width - width - 2 : 2
                        Behavior on x { NumberAnimation { duration: 150 } }
                    }
                    
                    MouseArea {
                        anchors.fill: parent
                        onClicked: root.applyToAll = !root.applyToAll
                    }
                }
            }
            
            // Monitor Selector
            ColumnLayout {
                Layout.fillWidth: true
                spacing: 8
                opacity: root.applyToAll ? 0.6 : 1.0
                enabled: !root.applyToAll
                
                RowLayout {
                    Layout.fillWidth: true
                    spacing: 8
                    
                    Text {
                        text: "Select monitors"
                        font.pixelSize: 14
                        color: Colors.textSubdued
                        Layout.fillWidth: true
                    }
                    
                    Text {
                        text: "grip-vertical"
                        font.pixelSize: 12
                        font.family: Fonts.iconFont
                        color: Colors.textSubdued
                        opacity: 0.5
                    }
                }
                
                // Monitor chips
                Flow {
                    Layout.fillWidth: true
                    spacing: 8
                    
                    Repeater {
                        model: root.orderedMonitors
                        
                        delegate: Rectangle {
                            id: monitorChip
                            required property int index
                            required property string modelData
                            
                            width: chipRow.implicitWidth + 24
                            height: 32
                            
                            property bool isSelected: root.applyToAll || root.selectedMonitors.includes(modelData)
                            
                            color: isSelected ? Colors.blue : Colors.bg_1
                            radius: 8
                            border.width: 2
                            border.color: isSelected ? Colors.blue : Colors.bg_2
                            
                            RowLayout {
                                id: chipRow
                                anchors.centerIn: parent
                                spacing: 6
                                
                                Text {
                                    text: "grip-vertical"
                                    font.pixelSize: 12
                                    font.family: Fonts.iconFont
                                    color: isSelected ? Colors.bg : Colors.textSubdued
                                }
                                
                                Text {
                                    visible: isSelected
                                    text: "check"
                                    font.pixelSize: 12
                                    font.family: Fonts.iconFont
                                    color: Colors.bg
                                }
                                
                                Text {
                                    text: modelData
                                    color: isSelected ? Colors.bg : Colors.text
                                    font.pixelSize: 12
                                    font.weight: Font.Medium
                                }
                            }
                            
                            MouseArea {
                                anchors.fill: parent
                                cursorShape: Qt.PointingHandCursor
                                onClicked: root.toggleMonitor(modelData)
                            }
                        }
                    }
                }
            }
            
            // Layout Grid
            Flow {
                Layout.fillWidth: true
                Layout.fillHeight: true
                spacing: 8
                
                Repeater {
                    model: root.layouts
                    
                    delegate: Rectangle {
                        id: layoutBtn
                        width: 80
                        height: 64
                        
                        property bool isActive: {
                            if (root.selectedMonitors.length === 0) {
                                return modelData.code === root.activeLayout
                            } else if (root.selectedMonitors.length === 1) {
                                var mon = root.selectedMonitors[0]
                                var dict = (pluginApi && pluginApi.mainInstance && pluginApi.mainInstance.monitorLayouts)
                                    ? pluginApi.mainInstance.monitorLayouts
                                    : {}
                                var monLayout = dict[mon] || ""
                                return modelData.code === monLayout
                            }
                            return false
                        }
                        property bool isHovered: false
                        
                        color: isActive ? Colors.blue : Colors.bg_1
                        radius: 8
                        
                        ColumnLayout {
                            anchors.centerIn: parent
                            spacing: 4
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: root.iconMap[modelData.code] || "layout-board"
                                font.pixelSize: 20
                                font.family: Fonts.iconFont
                                color: layoutBtn.isActive ? Colors.bg : Colors.text
                            }
                            
                            Text {
                                Layout.alignment: Qt.AlignHCenter
                                text: modelData.name
                                color: layoutBtn.isActive ? Colors.bg : Colors.text
                                font.pixelSize: 11
                                font.weight: Font.Medium
                                wrapMode: Text.WordWrap
                                maximumWidth: 70
                            }
                        }
                        
                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            cursorShape: Qt.PointingHandCursor
                            
                            onEntered: layoutBtn.isHovered = true
                            onExited: layoutBtn.isHovered = false
                            
                            onClicked: {
                                if (root.applyToAll) {
                                    pluginApi.mainInstance.setLayoutGlobally(modelData.code)
                                } else if (root.selectedMonitors.length > 0) {
                                    root.selectedMonitors.forEach(m => {
                                        pluginApi.mainInstance.setLayout(m, modelData.code)
                                    })
                                } else {
                                    pluginApi.mainInstance.setLayout(root.panelMonitor, modelData.code)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
