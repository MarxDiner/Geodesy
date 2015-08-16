import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle{
    id: dlistbox
    signal orderChanged(string method)
    x: 41
    y: 76
    width: 217
    height: 199
    color: "#00000000"
    border.width: 0
    property string colorCurrent: "#efefef"
    property string colorNormal: ""
    property string colorSelected: ""
    property string colorn_Hover: ""
    property string colorc_Hover: ""
    property string mainText_1: ""
    property string viceText_1: ""
    property string mainText_2: ""
    property string viceText_2: ""
    property string mainText_3: ""
    property string viceText_3: ""
    Column {
        DListBoxItem{
            id:d1
            name:"d1"
            mainText: dlistbox.mainText_1
            viceText: dlistbox.viceText_1
            color: dlistbox.colorCurrent
            colorNormal: dlistbox.colorNormal
            colorSelected: dlistbox.colorSelected
            colorn_Hover: dlistbox.colorn_Hover
            colorc_Hover: dlistbox.colorc_Hover

            Rectangle{
                id:checknote
                x: 0
                color: "#ec3838"
                border.color: "#f80303"
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                Label {
                    id: checknotelabel
                    text: qsTr("正算")
                    anchors.right: parent.right
                    anchors.rightMargin: 18
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: -59
                    font.pointSize: 11
                }
                DCheckBox{
                    id:checkbox1
                    x: -16
                    width: 62
                    height: 36
                    anchors.top: parent.top
                    anchors.topMargin: 8
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    picCurrent: "Image/no.png"
                    picNormal: "Image/no.png"
                    picChecked: "Image/yes.png"
                    picn_Hover: "Image/no.png"
                    picc_Hover: "Image/yes.png"
                    state: "checked"
                    onClicked:
                    {
                          if(checkbox1.state=="checked"||checkbox1.state=="c_hover") //c_hover and checked is the same
                          {
                              checknotelabel.text="正算";
                              orderChanged("positive")
                          }
                          else
                          {
                              checknotelabel.text="反算";
                              orderChanged("negative")
                          }
                    }
                }

                Rectangle {
                    id: checknote_border
                    x: 0
                    width: 1
                    height: 50
                    color: "#2b89fe"
                    anchors.top: parent.top
                    anchors.topMargin: 11
                    anchors.right: parent.right
                    anchors.rightMargin: 69
                    border.width: 0
                    border.color: "#2b89fe"
                }
            }
        }
        DListBoxItem{
            id:d2
            name:"d2"
            mainText: dlistbox.mainText_2
            viceText: dlistbox.viceText_2
            color: dlistbox.colorCurrent
            colorNormal: dlistbox.colorNormal
            colorSelected: dlistbox.colorSelected
            colorn_Hover: dlistbox.colorn_Hover
            colorc_Hover: dlistbox.colorc_Hover
        }
        DListBoxItem{
            id:d3
            name:"d3"
            mainText: dlistbox.mainText_3
            viceText: dlistbox.viceText_3
            color: dlistbox.colorCurrent
            colorNormal: dlistbox.colorNormal
            colorSelected: dlistbox.colorSelected
            colorn_Hover: dlistbox.colorn_Hover
            colorc_Hover: dlistbox.colorc_Hover
        }
        Component.onCompleted: {
            d1.select.connect(dlistBoxSelectionfunc)
            d2.select.connect(dlistBoxSelectionfunc)
            d3.select.connect(dlistBoxSelectionfunc)
            d1.state="selected"
        }

        function dlistBoxSelectionfunc(id)
        {
            if(id=="d1")
            {
                d1.state="selected"
                d2.state="normal"
                d3.state="normal"
                checknote.parent=d1
            }
            if(id=="d2")
            {
                d1.state="normal"
                d2.state="selected"
                d3.state="normal"
                checknote.parent=d2
            }

            if(id=="d3")
            {
                d1.state="normal"
                d2.state="normal"
                d3.state="selected"
                checknote.parent=d3
            }

        }

    }

}

