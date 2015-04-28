TrayTip, 提示, 按F12打开输入框,,1
SetTimer, RemoveTrayTip, 10000
return

RemoveTrayTip:
SetTimer, RemoveTrayTip, Off
TrayTip
return

F12::
InputBox, Text, 输入,文本框中可以用右键菜单进行复制/粘贴, , 

if ErrorLevel
{
    ;MsgBox,
}
else{
    Sleep 100
    ;MsgBox,"%Text%"
    SendRaw, %Text%
}
