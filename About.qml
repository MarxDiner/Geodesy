import QtQuick 2.0
import QtQuick.Controls 1.2
Rectangle {
    id: d3
    x: 92
    y: 46
    width: 607
    height: 354
    color: "#efedef"
    anchors.right: parent.right
    anchors.rightMargin: 0
    Text {
        id: title
        x: 313
        width: 81
        height: 12
        color: "#000000"
        text: "关于本程序"
        anchors.top: parent.top
        anchors.topMargin: -27
        anchors.horizontalCenterOffset: -14
        anchors.horizontalCenter: parent.horizontalCenter
        font.pointSize: 9
        font.family: "微软雅黑"
        font.pixelSize: 16
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


    Text {
        id: label1
        x: 41
        y: 169
        width: 186
        height: 12
        font.family: "微软雅黑"
        text: qsTr("本程序由<strong>冯哲煜</strong>使用<strong>QT5</strong>编写")
        font.pointSize: 11
        textFormat: Text.RichText
        clip: false
    }

    Text {
        id: label2
        x: 96
        y: 209
        font.family: "微软雅黑"
        text: qsTr("遵守GPL协议")
        textFormat: Text.RichText
    }
    Text {
        id: label3
        x: 53
        y: 249
        font.family: "微软雅黑"
        text: qsTr("版权所有（C）2015  冯哲煜")
        textFormat: Text.RichText
    }

    Image {
        id: image1
        x: 351
        y: 52
        width: 204
        height: 200
        source: "Image/GNU.jpg"
    }

    Image {
        id: image2
        x: 84
        y: 52
        width: 100
        height: 100
        source: "Image/signature.png"
    }

}
