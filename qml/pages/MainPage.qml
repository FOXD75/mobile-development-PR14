import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    objectName: "mainPage"
    allowedOrientations: Orientation.All

    Column {
        id: root
        anchors.centerIn: parent
        spacing: 30

        signal buttonClicked(int buttonNumber)

        Button {
            text: "Button1"
            onClicked: root.buttonClicked(1)
        }

        Button {
            text: "Button2"
            onClicked: root.buttonClicked(2)
        }

        Button {
            text: "Button3"
            onClicked: root.buttonClicked(3)
        }

        Button {
            text: "Button4"
            onClicked: root.buttonClicked(3)
        }

        Connections {
            target: root
            onButtonClicked: {
                console.log("Button", buttonNumber, "clicked!")
            }
        }
    }
}
