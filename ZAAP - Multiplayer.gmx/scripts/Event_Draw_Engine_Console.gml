var i
var text
var size = ds_list_size(console_text)
var get_height = display_get_gui_height()
var get_width = display_get_gui_width()

draw_set_halign(fa_left)
draw_set_valign(fa_bottom)


if field_focus == -2
    {
    draw_set_color(c_black)
    draw_set_alpha(.1)
    draw_rectangle(0,get_height,160,get_height-16,false)
    draw_set_alpha(1)
    draw_rectangle(0,get_height,160,get_height-16,true)
    text = keyboard_string
    draw_text(0,get_height,text)
    }
if field_focus == -1
    {
    draw_set_color(c_black)
    draw_set_alpha(.1)
    draw_rectangle(0,get_height,160,get_height-16,false)
    text = "[Enter]"
    draw_text(0,get_height,text)
    draw_set_alpha(1)
    }

for (i = 0;i < size;i += 1)
    {
    text = ds_list_find_value(console_text,size-i-1)
    draw_text(0,get_height-16-16*i,text)
    }

if !(lifetime mod (room_speed))
&& !ds_list_empty(console_text)
&& ds_list_size(console_text) > 0
    {
    ds_list_delete(console_text,0)
    }
