pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import Quickshell.Hyprland
import qs.settings
import qs.services
import qs.components.animations

// Simple polkit authentication dialog
// Note: This is a placeholder - full polkit integration requires proper service support

Item {
    id: root
    visible: false
    
    property string action: ""
    property string message: "Authentication required"
    property bool authenticated: false
    
    signal submit(string password)
    signal cancel()
    
    IpcHandler {
        target: "polkit"
        
        function authenticate(actionId: string, message: string): void {
            root.action = actionId
            root.message = message
            root.visible = true
        }
        
        function cancelAuth(): void {
            root.visible = false
            root.cancel()
        }
    }
    
    Keys.onPressed: event => {
        if (event.key === Qt.Key_Escape) {
            root.visible = false
            root.cancel()
        }
    }
}
