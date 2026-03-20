pragma ComponentBehavior: Bound

import QtQuick
import Quickshell
import qs.settings
import qs.modules.greeter.components

/**
 * GreeterBackground - Full-screen blurred wallpaper background for greeter
 */
Item {
    id: root
    
    required property var context

    // Cache screen geometry
    property var screenGeom: ScreenGeometry.getGeometry(Config.mainMonitorId)

    // Reactive updates when screen geometries change
    Connections {
        target: ScreenGeometry
        
        function onScreenGeometriesChanged() {
            root.screenGeom = ScreenGeometry.getGeometry(Config.mainMonitorId);
        }
    }

    // Background container
    Rectangle {
        anchors.fill: parent
        color: Colors.bgDark
        
        // Blurred wallpaper using the reusable component
        BlurredWallpaper {
            anchors.fill: parent
            screenX: root.screenGeom.x
            screenY: root.screenGeom.y
            screenWidth: root.screenGeom.width
            screenHeight: root.screenGeom.height
            blurRadius: Config.greeterBlurRadius || 64
            showBlur: true
            darkenOpacity: Config.greeterDimming || 0.5
        }
    }
}
