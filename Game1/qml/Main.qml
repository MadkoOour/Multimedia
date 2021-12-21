import Felgo 3.0
import QtQuick 2.0

GameWindow {
    id: gameWindow
    activeScene: scene
    screenWidth: 960
    screenHeight: 640

    Scene {
        id: scene


        Rectangle {
        anchors.fill: parent.gameWindowAnchorItem
        color: "#F5F091"

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 30
            color: "#5E6D75"
            text: "Welcome"
            font.bold: true
        }
        Column{
            anchors.centerIn: parent
            spacing: 10

            GameButton{

                text: "Learn"
                onClicked: {
                    var component = Qt.createComponent("Learn.qml")
                        var window = component.createObject(gameWindow)
                        scene.visible=false
                        window.show
                }

            }
            GameButton{
                text: "Quiz"
            }
            GameButton{
                text: "Exit"
                onClicked: Qt.quit()

            }
        }

        }


    }
}
