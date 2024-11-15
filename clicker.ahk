#Requires AutoHotkey v2

clicking := false

RButton::
{
    global clicking
    if !clicking {
        clicking := true
        SetTimer CheckState, 20
    }
    Click "Right"
}

CheckState() {
    global clicking
    if !GetKeyState("RButton", "P") {
        SetTimer CheckState, 0
        clicking := false
        return
    }
    Click "Right"
    Sleep 10
}
