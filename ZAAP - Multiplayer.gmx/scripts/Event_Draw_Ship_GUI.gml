if Ship_Control != -1
    {
    var get_entity = Ship_Control
    draw_set_halign(fa_left)
    draw_set_valign(fa_top)
    draw_set_color(c_blue)
    
    draw_text(view_xview[0]+0,view_yview[0]+64,"Ship ID: " + string(Ship_Control))
    var get_x = ds_map_find_value(get_entity,"x")
    var get_y = ds_map_find_value(get_entity,"y")

    draw_set_color(c_blue)
    draw_circle(get_x,get_y,32,true)
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    draw_text(get_x,get_y+48,"x: " + string(get_x))
    draw_text(get_x,get_y+64,"y: " + string(get_y))
    }
