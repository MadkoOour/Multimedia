import QtQuick 2.0
import QtMultimedia 5.12


Column{
    anchors.centerIn: parent
    spacing: 20

    property string animalName: ""

    Rectangle {
        id: animalbutton
        signal clicked

        width: 200
        height: 200
        color: "transparent"

        Image
        {
            id: animalImg
            anchors.fill: parent
            source: "../assets/"+animalName+".png"

        }

        SoundEffect
        {
            id: sound
            source: "../sounds/"+animalName+".wav"
        }

        MouseArea
        {
            id: mousearea
            anchors.fill:parent
            onClicked:{
                sound.play()
                buttonClicked=true
            }
        }


    }

    Text{
        id: cattext
        visible: buttonClicked
        text:"This is "+animalName
        color: "#5E6D75"
        font.pixelSize: 20
        font.bold: true
        anchors.horizontalCenter: parent.gameWindowAnchorItem.horizontalCenter
     }

}

