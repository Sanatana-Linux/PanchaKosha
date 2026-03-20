pragma ComponentBehavior: Bound
import QtQuick
import qs.settings

Rectangle {
    id: root

    // Styling properties
    property color chipColor: Colors.bgBlur
    property int chipRadius: Config.barHeight / 3
    property int padding: Config.gapsOut * 2

    // Content
    default property alias contentData: contentItem.data
    property alias contentItem: contentItem

    // Sizing
    implicitWidth: contentItem.childrenRect.width + padding
    implicitHeight: parent ? parent.height : 32

    // Glass base
    color: chipColor
    radius: chipRadius
    border.width: 1
    border.color: Colors.bg_4Blur

    // Subtle inner gradient to give depth
    Rectangle {
        anchors.fill: parent
        radius: root.chipRadius
        color: "transparent"
        layer.enabled: false
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.rgba(1,1,1, root.chipColor.a ? Math.min(root.chipColor.a + 0.02, 0.15) : 0.05) }
            GradientStop { position: 1.0; color: Qt.rgba(0,0,0, root.chipColor.a ? Math.min(0.02 + root.chipColor.a * 0.4, 0.12) : 0.02) }
        }
        opacity: 0.6
        z: 1
        visible: true
    }

    // Content container
    Item {
        id: contentItem
        anchors.centerIn: parent
        width: childrenRect.implicitWidth
        height: parent.height
        z: 2
    }
}
