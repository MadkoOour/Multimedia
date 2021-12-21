import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12

    Scene {
        id: scene
        x: 0
        y: 0
        width: 480
        height: 320
        visible: true

        Rectangle{
            anchors.fill: scene.gameWindowAnchorItem
            color: "#F5F091"


        }

       Text{
           text:"What Is This Animal? "
           color: "#5E6D75"
           font.pixelSize: 30
           font.bold: true
           anchors.horizontalCenter: scene.gameWindowAnchorItem.horizontalCenter
           anchors.top:scene.gameWindowAnchorItem.top
       }


           Animal_Button
           {
               id: animal_Button
               animalName: "cat"
           }

           Rectangle{
               id: next
               x: 298
               y: 139
               width: 50
               height: 39
               color: "transparent"

               Image
               {
                   id: arrowImg
                   x: 548
                   y: 203
                   width: 50
                   height: 50
                   source: "../assets/arrow.png"


               }
               SoundEffect
               {
                   id: soundclick
                   source: "../sounds/click.wav"
               }
               MouseArea
               {
                   id: mousearea
                   anchors.fill:parent
                   onClicked:{
                       soundclick.play()
                   }
               }


           }

        }

