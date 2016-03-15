//check for button presses
var get_button = Find_Button()
//console("click!")
if get_button != -1
    {
    console("Clicked: " + string(get_button))
    ds_map_replace(get_button,"pressed",true)
    button_left_pressed = get_button
    }
else
    {
    if keyboard_check(vk_control)
        {
        console("Adding Button!")
        var current_menu = ds_stack_top(menu_stack)
        Add_Button(current_menu)
        }
    }
