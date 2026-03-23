pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import qs.settings
import qs.modules.bar.components
// use DwlService to detect Mango/dwl compositor presence


Item {
    id: root
    
    property var pluginApi: null
    property ShellScreen screen
    property string widgetId: ""
    property string section: ""
    visible: DwlService.dwlAvailable
    
    // Data binding
    readonly property string layoutCode: (pluginApi?.mainInstance?.monitorLayouts ?? {})[screen?.name] || "?"
    readonly property string layoutName: pluginApi?.mainInstance?.getLayoutName(layoutCode) || layoutCode
    
    // Icon mapping
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
    
    implicitWidth: background.width
    implicitHeight: background.height
    
    Background {
        id: background
        chipColor: Colors.bgBlur
        chipRadius: Config.barHeight / 3
        
        Row {
            anchors.centerIn: parent
            spacing: 8
            
            Text {
                color: Colors.text
                font.pixelSize: parent.parent.height * 0.6
                font.family: Fonts.iconFont
                text: root.iconMap[root.layoutCode] || "layout-board"
                anchors.verticalCenter: parent.verticalCenter
            }
            
            Text {
                color: Colors.text
                font.pixelSize: parent.parent.height * 0.35
                text: root.layoutName
                anchors.verticalCenter: parent.verticalCenter
                visible: parent.width > 100
            }
        }
    }
    
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            if (pluginApi) pluginApi.openPanel(screen, root)
        }
        onRightClicked: {
            if (pluginApi) pluginApi.openPanel(screen, root)
        }
    }
}
