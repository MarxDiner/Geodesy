import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle {
    id: gauss
    x: 92
    y: 46
    width: 607
    height: 354
    color: "#efedef"
    anchors.right: parent.right
    anchors.rightMargin: 0
    Component.onCompleted:
    {
        dListBox.orderChanged.connect(changeCalcOrder)
    }
    function changeCalcOrder(method)
    {
        if(method=="positive")
        {
            positive.parent=inputArea
            negative.parent=outputArea
        }
        else if(method=="negative")
        {
            positive.parent=outputArea
            negative.parent=inputArea
        }

    }

    Text {
        id: title
        x: 313
        width: 125
        height: 12
        color: "#000000"
        text: "高斯投影正反算 "
        anchors.top: parent.top
        anchors.topMargin: -27
        anchors.horizontalCenterOffset: -7
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 9
        font.family: "微软雅黑"
        font.pixelSize: 16
    }
    Text {
        id: text3
        x: 114
        y: 27
        text: qsTr("椭球选取")
        font.family: "Arial"
        font.pixelSize: 18
    }

    Rectangle {
        id: rectangle5
        x: 289
        y: 35
        width: 1
        height: 280
        color: "#2eafff"
        radius: 0
        border.width: 0
        border.color: "#2eafff"
    }
    DListBox
    {
        id:dListBox
        colorNormal: "#efefef"
        colorSelected: "#F7DE50"  //color should be more dark than hover
        colorn_Hover: "#FCEE9E"
        colorc_Hover: "#FCEE9E"
        mainText_1: "Krasovski椭球"
        viceText_1: "a = 6378245\ne2 = 0.00669342162297\nep2 = 0.00673852541468"
        mainText_2: "IUGG1975椭球"
        viceText_2: "a = 6378140\ne2 = 0.00669438499959\nep2 = 0.00673950181947"
        mainText_3: "CGCS2000椭球"
        viceText_3: "a = 6378137\ne2 = 0.00669438002290\nep2 = 0.00673949677547"

    }

    Rectangle {
        id: dListBoxborder
        x: 25
        y: 66
        width: 250
        height: 1
        color: "#ff9f53"
    }

    Rectangle {
        id: inputArea
        x: 338
        y: 27
        width: 224
        height: 106
        color: "#00000000"
        border.width: 0
        border.color: "#ed7600"

        Item {
            id: positive
            state:"input"
            states:[
                State {
                    name: "input"
                    PropertyChanges {target: l;readOnly:false}
                    PropertyChanges {target: b;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: l;readOnly:true}
                        PropertyChanges {target: b;readOnly:true}
              }
            ]

            x: 2
            y: 0
            width: 222
            height: 106
            TextField {
                id: l
                x: 38
                y: 46
                width: 159
                height: 20
                text: "77'11'22.333"
                readOnly: false
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            TextField {
                id: b
                x: 38
                y: 83
                width: 159
                height: 20
                text: "33'44'55.666"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: llabel
                x: 8
                y: 42
                text: qsTr("L:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: blabel
                x: 8
                y: 80
                text: qsTr("B:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text11
                x: -24
                y: 36
                width: 17
                height: 19
                text: qsTr("参考椭球")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }
        }
    }

    Rectangle {
        id: outputArea
        x: 338
        y: 186
        width: 224
        height: 108
        color: "#00000000"
        Item {
           // Component.onCompleted: negative.state="input"
            id: negative
            x: 1
            y: 1
            width: 222
            height: 98
            state: "output"
            states:[
                State {
                    name: "input"
                    PropertyChanges {target: x;readOnly:false}
                    PropertyChanges {target: y;readOnly:false}
                    PropertyChanges {target: z;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: x;readOnly:true}
                        PropertyChanges {target: y;readOnly:true}
                        PropertyChanges {target: z;readOnly:true}
              }
            ]


            TextField {
                id: x
                x: 39
                y: 7
                width: 159
                height: 20
                text: "77'11'22.333"
                smooth: true
                readOnly: true
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            TextField {
                id: y
                x: 39
                y: 44
                width: 159
                height: 20
                text: "33'44'55.666"
                readOnly: true
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: xlabel
                x: 9
                y: 3
                text: qsTr("x:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            TextField {
                id: z
                x: 39
                y: 83
                width: 159
                height: 20
                text: "5555.66"
                readOnly: true
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: ylabel
                x: 9
                y: 41
                text: qsTr("y:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: zlabel
                x: 9
                y: 80
                text: qsTr("Y:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text2
                x: 206
                y: 86
                color: "#000000"
                text: qsTr("m")
                font.pixelSize: 15
                font.bold: true
            }

            Text {
                id: text6
                x: 206
                y: 47
                color: "#000000"
                text: qsTr("m")
                font.pixelSize: 15
                font.bold: true
            }

            Text {
                id: text7
                x: 206
                y: 10
                color: "#000000"
                text: qsTr("m")
                font.pixelSize: 15
                font.bold: true
            }

            Text {
                id: text5
                x: -24
                y: 18
                width: 17
                height: 21
                text: qsTr("高斯平面")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }
        }
    }

    Button {
        id: button1
        x: 433
        y: 146
        text: qsTr("解算")
        checkable: false
    }


}
