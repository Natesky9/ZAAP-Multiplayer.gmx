//draw the engine when the game is focused
//----------------------------------------------------------------//
draw_set_color(c_blue)
draw_line(mouse_x,mouse_y,room_width/2,room_height/2)


var mode = ds_stack_top(menu_stack)
var mode_name = ds_map_find_value(menu_names_to_string,mode)
for (i = ds_list_size(mode)-1;i >= 0;i -= 1)
    {
    var button = ds_list_find_value(mode,i)
    Event_Draw_Engine_Button(button)
    }

if mode_name = "edit_menu"
Event_Draw_Engine_Edit_Menu()

draw_set_color(c_black)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_text(0,0,mode_name)

