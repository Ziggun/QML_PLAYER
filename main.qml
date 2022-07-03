import QtQuick 2.12
import QtQuick.Window 2.12
import QtMultimedia 5.12
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.2

Window {
    id: mainWindow
    title:"Audio PLayer"
    visible: true
    width: 500
    height: 400
    property int previousX
    property int previousY

    Rectangle {
    id:toolBar
    width: 500
    height: 30
    gradient: Gradient {
    GradientStop {position: 0.1; color: "cyan"}
    GradientStop {position: 0.5; color: "darkslategrey"}
    GradientStop {position: 1.0; color: "black"}
    }
    }
    Text {
        id: name
        x:190
        y:2
        color: "white"
        font.pointSize: 14
        text: qsTr("Audio PLayer")
    }

    Rectangle {
        id:screen
        width: 500
        height: 200
        anchors.verticalCenter: parent.verticalCenter
        gradient: Gradient {
            GradientStop{position: 0.1; color: "white"}
            GradientStop{position: 0.5; color: "blue"}
            GradientStop{position: 1.0; color: "red"}
        }

    }


    Button {
        id: iclose
        anchors.right: parent.right
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/close.png"
        fillMode: Image.PreserveAspectFit
        }
        }
       }

    Button {
        id: istop

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: 70
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/stop.png"
        fillMode: Image.PreserveAspectFit
        }
        }
       }

    Button {
        id: iplay

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/play.jfif"
        fillMode: Image.PreserveAspectFit
        }
        }
       }

    Button {
        id: ipause

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: -70
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/pause.jpg"
        fillMode: Image.PreserveAspectFit
        }
        }
       }
    Button {
        id: irewind

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: -140
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/rewind.png"
        fillMode: Image.PreserveAspectFit
        }
        }
       }
    Button {
        id: iforward

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 150
        anchors.horizontalCenterOffset: 140
        width: 50
        height: 30
        style:  ButtonStyle {
        label:Image {
        source: "qrc:/forward.png"
        fillMode: Image.PreserveAspectFit
        }
        }
       }



    Slider
       {
           x: (parent.width - width)/2
           y: (parent.height - height)
           width: 480
           height: 20
           stepSize: 0.01
           onValueChanged:
           {
               console.log(value)
           }
       }
    }

