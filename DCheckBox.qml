import QtQuick 2.0

Rectangle {
    id:dcheckbox
    width: 100
    height: 62
    color: "#00000000"
    property string picCurrent: ""
    property string picNormal: ""
    property string picChecked: ""
    property string picn_Hover: ""
    property string picc_Hover: ""

    signal clicked
    signal checked

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
        onEntered: dcheckbox.state == "checked" ? dcheckbox.state = "c_hover" : dcheckbox.state = "n_hover"
        onExited: dcheckbox.state == "c_hover"||dcheckbox.state == "checked" ? dcheckbox.state = "checked" : dcheckbox.state = "normal"
        onClicked:
        {
            dcheckbox.state == "checked"||dcheckbox.state == "c_hover" ? dcheckbox.state = "normal":dcheckbox.state = "checked"
            dcheckbox.clicked()
        }
    }
    states:
    [
        State{
            name:"n_hover"
            PropertyChanges {
                target: dcheckbox
                picCurrent:picn_Hover
            }
        },
        State{
            name:"c_hover"
            PropertyChanges {
                target: dcheckbox
                picCurrent:picc_Hover
            }
        },
        State {
            name: "normal"
            PropertyChanges {
                target: dcheckbox
                picCurrent:picNormal
            }
        },
        State {
            name: "checked"
            PropertyChanges {
                target: dcheckbox
                picCurrent:picChecked
            }
        }

    ]
}

