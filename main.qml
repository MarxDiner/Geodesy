import QtQuick 2.1
import QtQuick.Window 2.1
import QtQuick.Controls 1.2
Window {
    id:window
    visible: true
    width: 700
    height: 400
    color: "#efedef"
    flags:Qt.FramelessWindowHint  | Qt.WindowSystemMenuHint | Qt.WindowMinimizeButtonHint | Qt.Window
    Rectangle {
        id: titlebar
        x: 0
        y: 0
        z:-1
        width: 699
        height: 30
        color: "#efedef"
        MouseArea {
            anchors.fill: parent
            property variant p_x
            property variant p_y  //can be property or variant
            onPressed: {
                p_x=mouseX   //record the  previousPosition
                p_y=mouseY
            }
            onPositionChanged: {
                if (pressedButtons == Qt.LeftButton) {
                    window.x=window.x + (mouseX - p_x)
                    window.y=window.y + (mouseY - p_y)
                }
            }
        }
    }

   D3Window{

       id:d3Window
       visible: true
    }
   Bessel{
       id:besselWindow
       visible: false
   }
   Gauss{
       id:gaussWindow
       visible: false
   }
   About{
       id:aboutWindow
       visible: false
   }

   LeftPanel
   {
      id:leftPanel
   }
    SysBtnGroup
    {
        id: sysbtngrp
        x: 636
        y: 0
        z: 3
        onMin: window.showMinimized()
        onClose: window.close()
    }
    Component.onCompleted: {
        leftPanel.currentChanged.connect(changeWindow)
    }
    function changeWindow(name)
    {
        if(name=="d3_Btn")
        {
            d3Window.visible=true
            besselWindow.visible=false
            gaussWindow.visible=false
            aboutWindow.visible=false
        }
        if(name=="Bessel_Btn")
        {
            d3Window.visible=false
            besselWindow.visible=true
            gaussWindow.visible=false
            aboutWindow.visible=false
        }

        if(name=="Gauss_Btn")
        {
            d3Window.visible=false
            besselWindow.visible=false
            gaussWindow.visible=true
            aboutWindow.visible=false
        }
        if(name=="About_Btn")
        {

            d3Window.visible=false
            besselWindow.visible=false
            gaussWindow.visible=false
            aboutWindow.visible=true
        }
    }
}
