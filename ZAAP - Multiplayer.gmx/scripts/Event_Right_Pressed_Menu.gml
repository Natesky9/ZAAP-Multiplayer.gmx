var get_button = Find_Button()

if keyboard_check(vk_shift) && get_button != -1
    {//if shift is held
    //edit the button
    var edit_menu = ds_map_find_value(menu_names_to_list,"edit_menu")
    ds_stack_push(menu_stack,edit_menu)
    button_selected = get_button
    var name = ds_map_find_value(button_selected,"text")
    console("Now editing button named '" + name + "' with value of '" + string(button_selected))
    exit
    }

if get_button != -1
    {
    click_x = mouse_x
    click_y = mouse_y
    button_right_pressed = get_button
    }
