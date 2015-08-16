import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle {
    id: bessel
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
            positive.visible=true
            negative.visible=true
            positive_2.visible=false
            negative_2.visible=false

        }
        else if(method=="negative")
        {
            positive.visible=false
            negative.visible=false
            positive_2.visible=true
            negative_2.visible=true
        }

    }

    Text {
        id: title
        x: 313
        width: 125
        height: 12
        color: "#000000"
        text: "贝塞尔大地问题解算 "
        anchors.top: parent.top
        anchors.topMargin: -27
        anchors.horizontalCenterOffset: -23
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
        x: 341
        y: 35
        width: 224
        height: 124
        color: "#00000000"
        border.width: 0
        border.color: "#ed7600"

        Item {
            id: positive
            state:"input"
            states:[
                State {
                    name: "input"
                    PropertyChanges {target: l1;readOnly:false}
                    PropertyChanges {target: b1;readOnly:false}
                    PropertyChanges {target: a1;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: l1;readOnly:true}
                        PropertyChanges {target: b1;readOnly:true}
                        PropertyChanges {target: a1;readOnly:true}
              }
            ]

            x: 2
            y: -19
            width: 222
            height: 143
            TextField {
                id: l1
                x: 39
                y: 7
                width: 159
                height: 20
                text: "77'11'22.333"
                readOnly: false
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            TextField {
                id: b1
                x: 39
                y: 44
                width: 159
                height: 20
                text: "33'44'55.666"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: l1label
                x: 9
                y: 3
                text: qsTr("L<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            TextField {
                id: a1
                x: 39
                y: 78
                width: 159
                height: 20
                text: "5555.66"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: b1label
                x: 9
                y: 41
                text: qsTr("B<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: a1label
                x: 9
                y: 75
                text: qsTr("A<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text11
                x: -22
                y: 29
                width: 17
                height: 19
                text: qsTr("已知数据")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }

            TextField {
                id: s
                x: 39
                y: 114
                width: 159
                height: 20
                text: "5555.66"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: hlabel1
                x: 12
                y: 108
                text: qsTr("s :")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text5
                x: 206
                y: 117
                color: "#000000"
                text: qsTr("m")
                font.pixelSize: 15
                font.bold: true
            }
        }

        Item {
            id: positive_2
            visible: false
            state:"input"
            states:[
                State {
                    name: "input"
                    PropertyChanges {target: l1;readOnly:false}
                    PropertyChanges {target: b1;readOnly:false}
                    PropertyChanges {target: a1;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: l1;readOnly:true}
                        PropertyChanges {target: b1;readOnly:true}
                        PropertyChanges {target: a1;readOnly:true}
              }
            ]

            x: 2
            y: -19
            width: 222
            height: 143
            TextField {
                id: l1_2
                x: 39
                y: 7
                width: 159
                height: 20
                text: "77'11'22.333"
                readOnly: false
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            TextField {
                id: b1_2
                x: 39
                y: 44
                width: 159
                height: 20
                text: "33'44'55.666"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: l1label_2
                x: 9
                y: 3
                text: qsTr("L<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            TextField {
                id: l2_2
                x: 39
                y: 78
                width: 159
                height: 20
                text: "5555.66"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: b1label_2
                x: 9
                y: 41
                text: qsTr("B<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: l2label_2
                x: 9
                y: 75
                text: qsTr("L<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text11_2
                x: -22
                y: 29
                width: 17
                height: 19
                text: qsTr("已知数据")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }

            TextField {
                id: b2_2
                x: 39
                y: 114
                width: 159
                height: 20
                text: "5555.66"
                font.pixelSize: 15
                placeholderText: qsTr("")
            }

            Label {
                id: b2label_2
                x: 8
                y: 112
                text: qsTr("B<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }
        }
    }

    Rectangle {
        id: outputArea
        x: 341
        y: 201
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
                    PropertyChanges {target: l2;readOnly:false}
                    PropertyChanges {target: b2;readOnly:false}
                    PropertyChanges {target: z2;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: l2;readOnly:true}
                        PropertyChanges {target: b2;readOnly:true}
                        PropertyChanges {target: z2;readOnly:true}
              }
            ]


            TextField {
                id: l2
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
                id: b2
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
                id: l2label
                x: 9
                y: 3
                text: qsTr("L<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            TextField {
                id: z2
                x: 39
                y: 83
                width: 159
                height: 20
                text: "5555.66"
                readOnly: true
                font.pixelSize: 15
            }

            Label {
                id: b2label
                x: 9
                y: 41
                text: qsTr("B<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: a2label
                x: 9
                y: 80
                text: qsTr("A<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                x: -20
                y: 19
                width: 17
                height: 19
                text: qsTr("运算结果")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }
        }
        Item {
           // Component.onCompleted: negative.state="input"
            id: negative_2
            x: 1
            y: 1
            width: 222
            height: 98
            state: "output"
            visible: false
            states:[
                State {
                    name: "input"
                    PropertyChanges {target: l2;readOnly:false}
                    PropertyChanges {target: b2;readOnly:false}
                    PropertyChanges {target: z2;readOnly:false}
                },
                    State {
                        name: "output"
                        PropertyChanges {target: l2;readOnly:true}
                        PropertyChanges {target: b2;readOnly:true}
                        PropertyChanges {target: z2;readOnly:true}
              }
            ]


            TextField {
                id: s_2
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
                id: a1_2
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
                id: slabel_2
                x: 9
                y: 5
                text: qsTr("s :")
                font.pointSize: 14
                font.family: "Verdana"
            }

            TextField {
                id: a2_2
                x: 39
                y: 83
                width: 159
                height: 20
                text: "5555.66"
                readOnly: true
                font.pixelSize: 15
            }

            Label {
                id: a1label_2
                x: 5
                y: 42
                text: qsTr("A<font size=\"1\">1</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Label {
                id: a2label_2
                x: 5
                y: 80
                text: qsTr("A<font size=\"1\">2</font>:")
                font.pointSize: 14
                font.family: "Verdana"
            }

            Text {
                id: text7_2
                x: 206
                y: 10
                color: "#000000"
                text: qsTr("m")
                font.pixelSize: 15
                font.bold: true
            }

            Text {
                x: -20
                y: 19
                width: 17
                height: 19
                text: qsTr("运算结果")
                font.pixelSize: 18
                wrapMode: Text.WordWrap
            }
        }

    }

    Button {
        id: button1
        x: 428
        y: 166
        text: qsTr("解算")
        checkable: false
    }


}
