import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle {
    id:dlistboxitem

    property string mainText: ""
    property string viceText: ""
    property string colorNormal: ""
    property string colorSelected: ""
    property string colorn_Hover: ""
    property string colorc_Hover: ""
    property string name:""
    signal clicked
    signal select(string c_id);
    onSelect: {
        console.log(c_id)
    }
    width: 217
    height: 66
    Label {
        id: label7
        x: 4
        y: 0
        width: 137
        height: 26
        font.family: "微软雅黑"
        text: mainText
        font.italic: false
        font.bold: true
        font.pixelSize: 19
    }

    TextEdit {
        id: textEdit1
        x: 4
        y: 26
        width: 137
        height: 40
        font.family: "Arial"
        text: viceText
        font.italic: true
        readOnly: true
        font.pixelSize: 10
    }
    MouseArea
    {
        hoverEnabled: true
        anchors.fill: parent
        onEntered: dlistboxitem.state == "selected" ?dlistboxitem.state == "selected" : dlistboxitem.state = "n_hover"
        onExited: dlistboxitem.state == "selected" ? dlistboxitem.state = "selected" : dlistboxitem.state = "normal"
        onClicked:
        {
            dlistboxitem.state = "selected"
            dlistboxitem.select(dlistboxitem.name)
            dlistboxitem.clicked()
        }
    }

    states:
    [
        State{
            name:"n_hover"
            PropertyChanges {
                target: dlistboxitem
                color:colorn_Hover
            }
        },
        State{
            name:"c_hover"
            PropertyChanges {
                target: dlistboxitem
                color:colorc_Hover
            }
        },
        State {
            name: "normal"
            PropertyChanges {
                target: dlistboxitem
                color:colorNormal
            }
        },
        State {
            name: "selected"
            PropertyChanges {
                target: dlistboxitem
                color:colorSelected
            }
        }

    ]
}

