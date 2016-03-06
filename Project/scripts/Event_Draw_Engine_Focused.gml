//draw the engine when the game is focused
//----------------------------------------------------------------//
draw_set_color(c_blue)
draw_line(mouse_x,mouse_y,room_width/2,room_height/2)
if mode == "Menu"
    {
    for (i = ds_list_size(buttons)-1;i >= 0;i -= 1)
        {
        var button = ds_list_find_value(buttons,i)
        Event_Draw_Engine_Button(button)
        }
    
    
    draw_set_color(c_black)
    draw_text(mouse_x,mouse_y,"mode = Choose")
    }
