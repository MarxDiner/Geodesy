import QtQuick 2.1

Row
{
    id: sysbtngroup
    spacing: 3

    signal skin
    signal feedback
    signal menu
    signal min
    signal close

    SysBtn
    {
        id:min
        picHover: "Image/min_hover.png"
        picNormal: "Image/min_normal.png"
        picPressed: "Image/min_pressed.png"
        onClicked:
        {
            console.log("min btn clicked")
            sysbtngroup.min()
        }
    }

    SysBtn
    {
        id:close
        picHover: "Image/close_hover.png"
        picNormal: "Image/close_normal.png"
        picPressed: "Image/close_pressed.png"
        onClicked:
        {
            console.log("close btn clicked")
            sysbtngroup.close()
        }
    }
}
