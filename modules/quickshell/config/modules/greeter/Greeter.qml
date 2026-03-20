pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Io
import qs.modules.greeter.components
import qs.settings

/**
 * Greeter - Main greeter component for greetd
 * 
 * This is the login screen that appears when greetd starts.
 * It uses the same styling as the lockscreen but with username selection.
 */
Item {
    id: root

    // Create greeter context to manage state
    GreeterContext {
        id: greeterContext

        onSessionStarted: {
            // Session started successfully, quickshell will exit
            console.log("Session started, exiting greeter...");
        }
    }

    // Background layer - full screen blurred wallpaper
    GreeterBackground {
        anchors.fill: parent
        context: greeterContext
    }

    // Login form - centered on main monitor only
    GreeterForm {
        anchors.fill: parent
        context: greeterContext
    }
}
