if draw_nearby_ships
&& Ship_Control != -1
    {
    if is_undefined(Ship_Control)
        {
        console("Error, your ship doesn't exist! @Event_Draw_Nearby_Ships")
        exit
        }
    //Ship_Control position
    var x_start = ds_map_find_value(Ship_Control,"x")
    var y_start = ds_map_find_value(Ship_Control,"y")
    
    var size = ds_list_size(entity_ship_list)
    for (var i = 0;i < size;i += 1)
        {
        var get_entity = ds_list_find_value(entity_ship_list,i)
        
        if is_undefined(get_entity)
            {
            console("Error, entity undefined @Event_Draw_Nearby_Ships")
            }
        
        if !is_undefined(get_entity)
            {
            var x1 = ds_map_find_value(get_entity,"x")
            var y1 = ds_map_find_value(get_entity,"y")
            var get_entity = ds_map_find_value(get_entity,"ssn")
            
            var get_dir = point_direction(x_start,y_start,x1,y1)
            
            var x2 = x_start + lengthdir_x(100,get_dir)
            var y2 = y_start + lengthdir_y(100,get_dir)
            
            //draw the pointers
            draw_set_color(c_blue)
            draw_line(x1,y1,x2,y2)
            //draw the tag
            var text = "[" + string(get_entity) + "]"
            var text_height = string_height(text)
            var text_width = string_width(text)
            draw_set_color(c_white)
            draw_rectangle(x2-text_width/2-2,y2-text_height/2-2,
                x2+text_width/2+2,y2+text_height/2+2,false)
            draw_set_color(c_blue)
            draw_rectangle(x2-text_width/2-2,y2-text_height/2-2,
                x2+text_width/2+2,y2+text_height/2+2,true)
            draw_set_halign(fa_center)
            draw_set_valign(fa_middle)
            draw_text(x2,y2,text)
            }
        }
    }
