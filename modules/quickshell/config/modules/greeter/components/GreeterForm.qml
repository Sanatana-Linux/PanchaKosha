pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import Quickshell
import qs.settings
import qs.components.animations

/**
 * GreeterForm - Login form with username/password input
 * 
 * Displays time, date, username field, password field, session selector,
 * and login button. Only visible on main monitor.
 */
Item {
    id: root
    
    required property var context

    // Determines if UI elements should be visible (only on main monitor)
    readonly property bool isMainMonitor: true

    Column {
        anchors.centerIn: parent
        spacing: 30
        width: 400

        // ============ TIME AND DATE DISPLAY ============
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 10

            // Time display with gradient
            Item {
                anchors.horizontalCenter: parent.horizontalCenter
                width: timeText.width
                height: timeText.height

                Text {
                    id: timeText
                    text: Time.time
                    font.pixelSize: 96
                    font.weight: Font.Bold
                    visible: false
                }

                LinearGradient {
                    anchors.fill: timeText
                    source: timeText
                    start: Qt.point(0, 0)
                    end: Qt.point(timeText.width, timeText.height)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Colors.blue }
                        GradientStop { position: 0.3; color: Colors.mauve }
                        GradientStop { position: 0.7; color: Colors.pink }
                        GradientStop { position: 1.0; color: Colors.sky }
                    }
                }
            }

            // Date display
            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                text: Time.fulldate
                color: Colors.textSubdued
                font.pixelSize: 20
                font.weight: Font.Light
            }
        }

        // ============ USERNAME INPUT ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 55
            color: Colors.darken_20
            border.width: 2
            border.color: usernameInput.activeFocus ? Colors.sky : Colors.blue
            radius: height / 2

            Behavior on border.color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            TextInput {
                id: usernameInput
                anchors.fill: parent
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                color: Colors.text
                font.pixelSize: 18
                font.weight: Font.Medium
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                focus: true
                text: context.username

                onTextChanged: context.username = text
                onAccepted: passwordInput.forceActiveFocus()

                Text {
                    anchors.centerIn: parent
                    text: "Username"
                    color: Colors.textSubdued
                    font.pixelSize: 18
                    visible: !usernameInput.activeFocus && usernameInput.text === ""
                }
            }
        }

        // ============ PASSWORD INPUT ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 55
            color: Colors.darken_20
            border.width: 3
            radius: height / 2
            
            // Dynamic border color based on authentication state
            border.color: {
                if (root.context.showFailure) {
                    return Colors.red;
                }
                if (passwordInput.activeFocus || context.password.length > 0) {
                    return Colors.sky;
                }
                return Colors.blue;
            }
            
            Behavior on border.color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            TextInput {
                id: passwordInput
                anchors.fill: parent
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                color: Colors.text
                font.pixelSize: 18
                font.weight: Font.Medium
                echoMode: TextInput.Password
                passwordCharacter: "●"
                enabled: !root.context.loginInProgress
                verticalAlignment: TextInput.AlignVCenter
                horizontalAlignment: TextInput.AlignHCenter
                focus: false

                onAccepted: root.context.tryLogin()
                onTextChanged: context.password = text

                Keys.onEscapePressed: {
                    root.context.clearInput();
                    usernameInput.forceActiveFocus();
                }
            }

            // Failure message overlay
            Text {
                anchors.centerIn: parent
                text: root.context.failureMessage
                color: Colors.red
                font.pixelSize: 14
                visible: root.context.showFailure
            }
        }

        // ============ SESSION SELECTOR ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 45
            color: Colors.darken_20
            border.width: 1
            border.color: Colors.bg_2
            radius: 10

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 15
                anchors.rightMargin: 15
                spacing: 10

                Text {
                    text: "Session:"
                    color: Colors.textSubdued
                    font.pixelSize: 14
                }

                ComboBox {
                    Layout.fillWidth: true
                    model: context.sessions.map(s => s.name)
                    currentIndex: context.sessions.findIndex(s => s.name === context.selectedSession)
                    
                    contentItem: Text {
                        text: parent.currentText
                        color: Colors.text
                        font.pixelSize: 14
                        verticalAlignment: Text.AlignVCenter
                    }

                    background: Rectangle {
                        color: "transparent"
                        border.color: Colors.bg_2
                        border.width: 1
                        radius: 5
                    }

                    popup: Popup {
                        y: parent.height
                        width: parent.width
                        implicitHeight: contentItem.implicitHeight
                        
                        contentItem: ListView {
                            clip: true
                            implicitHeight: contentHeight
                            model: parent.parent.model
                            
                            delegate: ItemDelegate {
                                width: parent.width
                                highlighted: parent.parent.currentIndex === index
                                
                                contentItem: Text {
                                    text: modelData
                                    color: highlighted ? Colors.blue : Colors.text
                                    font.pixelSize: 14
                                }

                                background: Rectangle {
                                    color: highlighted ? Colors.bg_1 : "transparent"
                                }

                                onClicked: {
                                    context.selectSession(modelData);
                                    parent.parent.popup.close();
                                }
                            }
                        }

                        background: Rectangle {
                            color: Colors.bgDark
                            border.color: Colors.bg_2
                            border.width: 1
                            radius: 10
                        }
                    }
                }
            }
        }

        // ============ LOGIN BUTTON ============
        Rectangle {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 50
            color: context.loginInProgress ? Colors.bg_2 : Colors.blue
            radius: 25

            Behavior on color {
                ColorAnimation {
                    duration: AnimationConfig.normal
                    easing.type: AnimationConfig.defaultEasing
                }
            }

            MouseArea {
                anchors.fill: parent
                enabled: !context.loginInProgress
                onClicked: root.context.tryLogin()

                Text {
                    anchors.centerIn: parent
                    text: context.loginInProgress ? "Logging in..." : "Login"
                    color: Colors.bg
                    font.pixelSize: 18
                    font.weight: Font.Bold
                }
            }
        }

        // ============ SPLASH TEXT ============
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            width: 400
            wrapMode: Text.WordWrap
            text: Config.greeterSplashText || "Welcome to MangoWC"
            horizontalAlignment: Text.AlignHCenter
            color: Colors.textSubdued
            font.pixelSize: Fonts.p
            visible: Config.showSplashOnGreeter || true
        }
    }
}
