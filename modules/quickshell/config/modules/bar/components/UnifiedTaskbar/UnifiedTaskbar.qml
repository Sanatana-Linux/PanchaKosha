import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.settings
import qs.components

// Unified taskbar for Mango / dwl using DwlService and DwlWindows
Background {
    id: root

    readonly property color pillColor: Colors.bg_1Blur
    readonly property color activeColor: Colors.blue
    readonly property color borderColor: Colors.bg_4Blur
    readonly property color glassHighlight: Qt.rgba(1,1,1,0.04)

    // windows that should be shown on the unified taskbar (computed)
    property var visibleWindows: []
    // keyboard selection index for navigation
    property int selectedIndex: 0

    function refreshWindows() {
        var out = DwlService.activeOutput
        if (!out || !DwlService.dwlAvailable) {
            visibleWindows = []
            return
        }

        var activeTags = DwlService.getActiveTags(out)
        var result = []

        for (var i = 0; i < DwlWindows.windowList.length; i++) {
            var w = DwlWindows.windowList[i]
            if (!w) continue
            if (w.monitorName !== out) continue
            if (activeTags.indexOf(w.tagIndex) === -1) continue
            result.push({
                toplevel: w.toplevel || null,
                address: w.address || "",
                appId: w.appId || w.class || "unknown",
                title: w.title || "",
                tagIndex: w.tagIndex,
                monitorName: w.monitorName,
                activated: w.activated || false
            })
        }

        visibleWindows = result
        // clamp selectedIndex
        if (visibleWindows.length === 0) selectedIndex = 0
        else if (selectedIndex >= visibleWindows.length) selectedIndex = visibleWindows.length - 1
    }

    // react to service events
    Connections { target: DwlWindows; function onWindowsChanged() { refreshWindows() } }
    Connections { target: DwlService; function onStateChanged() { refreshWindows() } }
    Connections { target: WorkspaceService; function onActiveWorkspaceIdChanged() { refreshWindows() } }

    Component.onCompleted: refreshWindows()

    FocusScope {
        id: focusScope
        // only focus when user explicitly clicks into the taskbar
        property bool hadFocus: false

        Keys.onLeftPressed: {
            if (root.visibleWindows.length > 0) {
                root.selectedIndex = Math.max(0, root.selectedIndex - 1)
                hadFocus = true
            }
        }
        Keys.onRightPressed: {
            if (root.visibleWindows.length > 0) {
                root.selectedIndex = Math.min(root.visibleWindows.length - 1, root.selectedIndex + 1)
                hadFocus = true
            }
        }
        Keys.onReturnPressed: {
            if (root.visibleWindows.length > 0) {
                var md = root.visibleWindows[root.selectedIndex]
                if (md && md.toplevel && typeof md.toplevel.activate === "function") md.toplevel.activate()
            }
        }

        Row {
            anchors.centerIn: parent
            spacing: 6

        Repeater {
            model: root.visibleWindows

            delegate: Rectangle {
                id: windowPill
                property var modelData: modelData
                readonly property int indexVal: index

                width: 40
                height: 32
                radius: 8

                property bool isActive: modelData.activated || (modelData.toplevel && modelData.toplevel.activated)
                property bool isHovered: false

                // visual selected state when navigated via keyboard
                readonly property bool isSelected: root.selectedIndex === indexVal

                // glassomorphic pill styling
                color: isActive ? activeColor : (isSelected ? Colors.blue : pillColor)
                border.width: 1
                border.color: borderColor
                scale: isHovered ? 1.03 : 1.0
                layer.enabled: true
                layer.effect: OpacityMask {
                    source: Rectangle { color: "white" }
                }

                Behavior on color { ColorAnimation { duration: 140 } }
                Behavior on scale { NumberAnimation { duration: 120; easing.type: Easing.OutQuad } }

                Row {
                    anchors.fill: parent
                    anchors.margins: 6
                    spacing: 6

                    // App icon (uses BackgroundWindows helper if available)
                    Image {
                        id: appIcon
                        width: 18
                        height: 18
                        fillMode: Image.PreserveAspectFit
                        // Prefer Quickshell.iconPath (scalable/cached icon), fallback to BackgroundWindows helper
                        source: (typeof Quickshell !== 'undefined' && Quickshell.iconPath) ? Quickshell.iconPath(modelData.appId, true) : (BackgroundWindows ? BackgroundWindows.getIconForAppId(modelData.appId) : "")
                        visible: source !== ""
                    }

                    Text {
                        text: modelData.title || "untitled"
                        color: Colors.text
                        font.pixelSize: 12
                        elide: Text.ElideRight
                        visible: parent.width > 120
                    }

                    // subtle highlight strip for glass effect
                    Rectangle {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.margins: -2
                        width: parent.width * 0.6
                        height: parent.height * 0.35
                        color: glassHighlight
                        radius: 6
                        opacity: isHovered ? 0.9 : 0.6
                        z: 3
                    }
                }

                MouseArea {
                    id: ma
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onEntered: { windowPill.isHovered = true; titleTip.openIfNeeded(); focusScope.focus = true; focusScope.hadFocus = true }
                    onExited: { windowPill.isHovered = false; titleTip.close() }
                    onClicked: {
                        if (modelData && modelData.toplevel && typeof modelData.toplevel.activate === "function") {
                            modelData.toplevel.activate()
                        }
                    }
                    onPressed: {
                        if (mouse.button === Qt.RightButton) {
                            actionPopup.open()
                        }
                    }
                    onClicked: {
                        // set keyboard selection to clicked item
                        root.selectedIndex = index
                    }
                }

                // Tooltip showing full title on hover
                Popup {
                    id: titleTip
                    anchor.item: ma
                    anchor.rect.x: -((width - (ma ? ma.width : 40)) / 2)
                    anchor.rect.y: (ma ? ma.height : 32) + 6
                    implicitWidth: Math.min(300, modelData.title.length * 8 + 24)
                    implicitHeight: 28
                    visible: false
                    property bool openIfNeeded: function() { if (modelData.title && modelData.title.length > 0) { visible = true } }
                    onVisibleChanged: if (!visible) titleTip.visible = false

                    Rectangle {
                        anchors.fill: parent
                        color: Colors.bg_2
                        radius: 6
                        border.width: 1
                        border.color: Colors.bg_3

                        Text {
                            anchors.centerIn: parent
                            text: modelData.title || ""
                            color: Colors.text
                            font.pixelSize: 12
                            elide: Text.ElideRight
                        }
                    }
                }

                // Context action popup for dwl windows
                Popup {
                    id: actionPopup
                    anchor.item: ma
                    anchor.rect.x: -((width - (ma ? ma.width : 40)) / 2)
                    anchor.rect.y: (ma ? ma.height : 32) + 6
                    implicitWidth: 220
                    visible: false

                    Rectangle {
                        anchors.fill: parent
                        color: Colors.bg_1
                        radius: 8
                        border.width: 1
                        border.color: Colors.bg_2

                        Column {
                            anchors.fill: parent
                            anchors.margins: 8
                            spacing: 6

                            // Focus/Open
                            Rectangle {
                                height: 34
                                radius: 6
                                color: openMouse.containsMouse ? Colors.brighten_5 : "transparent"
                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 6
                                    spacing: 8
                                    Text { text: Fonts.iconMonitor; font.family: Fonts.iconFont; color: Colors.text }
                                    Text { text: "Focus"; color: Colors.text }
                                }
                                MouseArea { id: openMouse; anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel && typeof modelData.toplevel.activate === "function") { modelData.toplevel.activate(); actionPopup.visible = false } } }
                            }

                            // Move to tag chips
                            Rectangle {
                                color: "transparent"
                                implicitHeight: 40
                                Flow { anchors.fill: parent; spacing: 6; anchors.margins: 6; }
                                Repeater {
                                    model: DwlService.tagCount
                                    delegate: Rectangle {
                                        height: 28
                                        width: 28
                                        radius: 6
                                        color: Colors.bg_2
                                        border.width: 1
                                        border.color: Colors.bg_3
                                        Text { anchors.centerIn: parent; text: index+1; color: Colors.text }
                                        MouseArea { anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel) { DwlWindows.moveWindowToTag(modelData.toplevel, index); actionPopup.visible = false } } }
                                    }
                                }
                            }

                            // Close
                            Rectangle {
                                height: 34
                                radius: 6
                                color: closeMouse.containsMouse ? Colors.brighten_5 : "transparent"
                                Row {
                                    anchors.fill: parent
                                    anchors.margins: 6
                                    spacing: 8
                                    Text { text: Fonts.iconFalse; font.family: Fonts.iconFont; color: Colors.red }
                                    Text { text: "Close"; color: Colors.red }
                                }
                                MouseArea { id: closeMouse; anchors.fill: parent; onClicked: { if (modelData && modelData.toplevel) { DwlWindows.closeWindow(modelData.toplevel); actionPopup.visible = false } } }
                            }
                        }
                    }
                }
            }
        }
    }
}
