lifetime += 1


if button_right_pressed != -1
    {
    var get_button = button_right_pressed
    var dist_x = click_x - mouse_x
    var dist_y = click_y - mouse_y
    
    click_x = mouse_x
    click_y = mouse_y
    
    var new_x1 = ds_map_find_value(get_button,"x1") - dist_x
    ds_map_replace(get_button,"x1",new_x1)
    
    var new_x2 = ds_map_find_value(get_button,"x2") - dist_x
    ds_map_replace(get_button,"x2",new_x2)
    
    var new_y1 = ds_map_find_value(get_button,"y1") - dist_y
    ds_map_replace(get_button,"y1",new_y1)
    
    var new_y2 = ds_map_find_value(get_button,"y2") - dist_y
    ds_map_replace(get_button,"y2",new_y2)
    
    }
