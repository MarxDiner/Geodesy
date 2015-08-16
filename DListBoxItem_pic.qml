import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle {
    id:dlistboxitem
    property string picNormal: ""
    property string picSelected: ""
    property string picn_Hover: ""
    property string picc_Hover: ""
    property string picCurrent:""
    property string name:""
    signal clicked
    signal select(string c_id);
    onSelect: {
        console.log(c_id)
    }

    width: 217
    height: 66
    Image
    {
        width: parent.width
        height: parent.height
        source: picCurrent;
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
                picCurrent:picn_Hover
            }
        },
        State{
            name:"c_hover"
            PropertyChanges {
                target: dlistboxitem
                picCurrent:picc_Hover
            }
        },
        State {
            name: "normal"
            PropertyChanges {
                target: dlistboxitem
                picCurrent:picNormal
            }
        },
        State {
            name: "selected"
            PropertyChanges {
                target: dlistboxitem
                picCurrent:picSelected
            }
        }

    ]
}

