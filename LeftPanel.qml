import QtQuick 2.0

Rectangle {
    id: leftpanel
    x: 0
    y: 0
    width: 85
    height: 400
    color: "#017495"
    property string curName:""
    signal currentChanged(string curName)

   Column{
    spacing:1
    DListBoxItem_pic
    {
        id:d1
        name:"d3_Btn"
        x: 0
        y: 0
        width: 85
        height: 99
        picNormal: "Image/D3.png"
        picSelected: "Image/D3_Selected.png"
        picn_Hover: "Image/D3.png"
        picc_Hover: "Image/D3.png"
        picCurrent:"Image/D3.png"
        onClicked: curName="d3_Btn"
    }
    DListBoxItem_pic
    {
        id:d2
        name:"Bessel_Btn"
        x: 0
        y: 78
        width: 85
        height: 99
        picNormal: "Image/Bessel.png"
        picSelected: "Image/Bessel_Selected.png"
        picn_Hover: "Image/Bessel.png"
        picc_Hover: "Image/Bessel.png"
        picCurrent:"Image/Bessel.png"
        onClicked: curName="Bessel_Btn"
    }
    DListBoxItem_pic
    {
        id:d3
        name:"Gauss_Btn"
        x: 0
        y: 196
        width: 85
        height: 99
        picNormal: "Image/Gauss.png"
        picSelected: "Image/Gauss_Selected.png"
        picn_Hover: "Image/Gauss.png"
        picc_Hover: "Image/Gauss.png"
        picCurrent:"Image/Gauss.png"
        onClicked: curName="Gauss_Btn"
    }
    DListBoxItem_pic
    {
        id:d4
        name:"About_Btn"
        x: 0
        y: 301
        width: 85
        height: 99
        picNormal: "Image/About.png"
        picSelected: "Image/About_Selected.png"
        picn_Hover: "Image/About.png"
        picc_Hover: "Image/About.png"
        picCurrent:"Image/About.png"
        onClicked: curName="About_Btn"
    }
}
   Component.onCompleted: {
       d1.select.connect(dlistBoxSelectionfunc)
       d2.select.connect(dlistBoxSelectionfunc)
       d3.select.connect(dlistBoxSelectionfunc)
       d4.select.connect(dlistBoxSelectionfunc)
       d1.state="selected"
   }

   function dlistBoxSelectionfunc(name)
   {
       if(name=="d3_Btn")
       {
           d1.state="selected"
           d2.state="normal"
           d3.state="normal"
           d4.state="normal"
           currentChanged(name)
       }
       if(name=="Bessel_Btn")
       {
           d1.state="normal"
           d2.state="selected"
           d3.state="normal"
           d4.state="normal"
           currentChanged(name)
       }

       if(name=="Gauss_Btn")
       {
           d1.state="normal"
           d2.state="normal"
           d3.state="selected"
           d4.state="normal"
           currentChanged(name)
       }
       if(name=="About_Btn")
       {
           d1.state="normal"
           d2.state="normal"
           d3.state="normal"
           d4.state="selected"
           currentChanged(name)
       }

   }

}


