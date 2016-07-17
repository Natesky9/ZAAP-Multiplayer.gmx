if field_focus == -1
    {
    field_focus = -2
    keyboard_string = ""
    exit
    }
if field_focus == -2
    {
    field_focus = -1
    if keyboard_string != ""
    Console_Input()
    keyboard_string = ""
    }

if field_focus > 0
    {
    Button_Do(field_focus)
    field_focus = -1
    keyboard_string = ""
    }
exit
