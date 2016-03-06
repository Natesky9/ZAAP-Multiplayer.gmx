//check for button presses
var get_button = Find_Button()

if get_button != -1
    {
    ds_map_replace(get_button,"pressed",true)
    button_left_pressed = get_button
    }
