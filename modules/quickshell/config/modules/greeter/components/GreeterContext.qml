pragma ComponentBehavior: Bound
import QtQuick
import Quickshell
import Quickshell.Services.Pam
import qs.settings

/**
 * GreeterContext - Manages shared state and PAM authentication for greetd
 * 
 * Handles username/password input, session selection, and PAM authentication.
 */
Scope {
    id: root

    // Signals
    signal sessionStarted()
    signal authenticationFailed(string message)

    // State properties - shared across all surfaces
    property string username: ""
    property string password: ""
    property string selectedSession: "Hyprland"
    property bool loginInProgress: false
    property bool showFailure: false
    property string failureMessage: ""

    // Available sessions - Loaded from JSON
    readonly property var sessions: Sessions.list

    // Clear failure message when user starts typing
    onPasswordChanged: {
        if (password.length > 0) {
            showFailure = false;
            failureTimer.stop();
        }
    }

    onUsernameChanged: {
        if (username.length > 0) {
            showFailure = false;
            failureTimer.stop();
        }
    }

    // Timer to auto-hide failure message after 3 seconds
    Timer {
        id: failureTimer
        interval: 3000
        repeat: false
        onTriggered: {
            root.showFailure = false;
            root.failureMessage = "";
        }
    }

    // Try to login with current credentials
    function tryLogin() {
        if (username === "" || password === "" || loginInProgress) return;
        
        loginInProgress = true;
        showFailure = false;
        failureTimer.stop();
        pam.start();
    }

    // Clear the input fields
    function clearInput() {
        password = "";
        showFailure = false;
        failureTimer.stop();
    }

    // Handle authentication failure
    function handleAuthFailure(message) {
        password = "";
        showFailure = true;
        failureMessage = message;
        loginInProgress = false;
        failureTimer.start();
        authenticationFailed(message);
    }

    // Select a session
    function selectSession(sessionName) {
        selectedSession = sessionName;
    }

    // PAM authentication context for greetd
    PamContext {
        id: pam

        // Use custom pam config for greetd
        configDirectory: Qt.resolvedUrl("../pam")
        config: "greetd.conf"

        // Set the username for PAM
        user: root.username

        // Handle PAM messages (password prompt)
        onPamMessage: {
            if (this.responseRequired) {
                this.respond(root.password);
            }
        }

        // Handle authentication completion
        onCompleted: function(result) {
            if (result === PamResult.Success) {
                // Start the session
                startSession();
            } else {
                handleAuthFailure("Authentication failed: " + result);
            }
        }

        // Handle errors
        onError: function(error) {
            handleAuthFailure("PAM error: " + error);
        }
    }

    // Start the user session using greetd IPC
    function startSession() {
        // Find the session command
        var sessionCmd = "";
        for (var i = 0; i < sessions.length; i++) {
            if (sessions[i].name === selectedSession) {
                sessionCmd = sessions[i].command;
                break;
            }
        }

        if (sessionCmd === "") {
            sessionCmd = selectedSession;
        }

        // Use greetd's create_session command via IPC
        // This will be handled by the greeter backend
        console.log("Starting session:", sessionCmd, "for user:", username);
        
        // Signal that session is starting
        root.sessionStarted();
        
        // In a real implementation, this would use greetd IPC to start the session
        // For now, we'll just exit quickshell which should hand off to the session
        Qt.quit();
    }
}
