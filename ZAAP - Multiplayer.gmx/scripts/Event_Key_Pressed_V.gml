if field_focus > 0 
and keyboard_check(vk_control)
    {
    if is_undefined(field_focus)
        {
        exit
        }
    var text = clipboard_get_text()
    ds_map_replace(field_focus,"value",text)
    show("Pasted!")
    }
