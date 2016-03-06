if button_left_pressed != -1
    {
    var get_button1 = button_left_pressed

    //reset pressed for mouse and button
    button_left_pressed = -1
    ds_map_replace(get_button1,"pressed",false)
    
    var get_button2 = Find_Button()
    if get_button1 == get_button2
        {
        Button_Do(get_button1)
        }
    }
