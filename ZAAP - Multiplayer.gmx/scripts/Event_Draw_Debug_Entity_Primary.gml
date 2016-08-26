if keyboard_check(vk_shift)
    {//loop through all entity lists
    for (var a = 0;a < ds_list_size(entity_list);a += 1)
        {//loop through list
        var get_list = ds_list_find_value(entity_list,a)
        
        for (var b = 0;b < ds_list_size(get_list);b += 1)
            {
            var get_entity = ds_list_find_value(get_list,b)
            
            var get_x = ds_map_find_value(get_entity,"x")
            var get_y = ds_map_find_value(get_entity,"y")
            
            if ds_map_exists(get_entity,"primary")
                {
                var get_primary = ds_map_find_value(get_entity,"primary")
                draw_set_color(c_blue)
                draw_text(get_x,get_y,string("Primary: " + string(get_primary)))
                
                if !is_undefined(get_primary)
                    {
                    //
                    var get_primary_x = ds_map_find_value(get_primary,"x")
                    var get_primary_y = ds_map_find_value(get_primary,"y")
                    
                    draw_line_colour(get_x,get_y,get_primary_x,get_primary_y,c_black,c_white)
                    //
                    }
                if is_undefined(get_primary)
                    {
                    draw_line_color(get_x,get_y,mouse_x,mouse_y,c_white,c_red)
                    }
                }
            if !ds_map_exists(get_entity,"primary")
                {
                console("This entity doesn't have a primary key!")
                }
            
            }
        }
    }
if !keyboard_check(vk_shift)
    {
    for (var c = 0;c < ds_list_size(null_primary_list);c += 1)
        {
        var get_entity = ds_list_find_value(null_primary_list,c)
        
        if !is_undefined(get_entity)
            {
            var get_x = ds_map_find_value(get_entity,"x")
            var get_y = ds_map_find_value(get_entity,"y")
        
            draw_line_color(get_x,get_y,mouse_x,mouse_y,c_blue,c_white)
            }
        }
    }
