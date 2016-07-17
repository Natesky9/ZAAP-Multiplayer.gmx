if mouse_check_button(mb_left)
    {
    draw_set_color(c_black)
    draw_circle(mouse_vector_x,mouse_vector_y,8,true)
    draw_line(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
    
    var get_direction = point_direction(mouse_x,mouse_y,mouse_vector_x,mouse_vector_y)
    var left_line_x = lengthdir_x(32,get_direction-30)
    var left_line_y = lengthdir_y(32,get_direction-30)
    
    var right_line_x = lengthdir_x(32,get_direction+30)
    var right_line_y = lengthdir_y(32,get_direction+30)
    draw_line(mouse_x,mouse_y,mouse_x+left_line_x,mouse_y+left_line_y)
    draw_line(mouse_x,mouse_y,mouse_x+right_line_x,mouse_y+right_line_y)
    }
