import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import myApp.cat 1.0

ApplicationWindow {
    id: root
    width: 300
    height: 480
    visible: true

Cat{
    id:myCat
}



    Text {
        x:40
        y:20
        width: 200
        height: 20
        text: qsTr("Kissan nimi")
    }
    TextField {
        id:catName
        x:40
        y:50
        width: 200
        height: 30
        text: ""
        placeholderText: qsTr("Kissan nimi")
    }
    Text {
        x:40
        y:90
        width: 200
        height: 20
        text: qsTr("Kissan väri")
    }
    TextField {
        id: catColor
        x:40
        y:120
        width: 200
        height: 30
        text: ""
        placeholderText: qsTr("Kissan väri")
    }

    Text {
        id: element
        x: 40
        y: 160
        width: 200
        height: 20
        text: qsTr("Klikkaa ensin tallenna ja sitten näytä")
        font.pixelSize: 12
    }
    Button {
        id: btnSave
        x: 40
        y: 190
        width: 200
        height: 30
        text: qsTr("Tallenna tiedot")
        font.bold: true
        onClicked: {
            myCat.setName(catName.text);
            myCat.setColor(catColor.text);
            txtShow.text="Tiedot tallennettiin"
        }
        background:
            Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                color: "#64ADC6"
                border.color: "#26282a"
                border.width: 1
                radius: 4
            }
       }

    Button {
        id: btnShow
        x: 40
        y: 230
        width: 200
        height: 30
        text: qsTr("Näytä tiedot")
        font.bold: true
        onClicked: {
            txtShow.text="Nimi="+myCat.getName+" väri="+myCat.getColor
        }
        background:
            Rectangle {
                implicitWidth: 100
                implicitHeight: 40
                color: "#64ADC6"
                border.color: "#26282a"
                border.width: 1
                radius: 4
            }
       }
    Text {
        id: txtShow
        x: 40
        y: 270
        width: 200
        height: 30
        text: "Tulos"
        font.pixelSize: 12
    }



}
