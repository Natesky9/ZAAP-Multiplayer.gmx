var i
var text
var size = ds_list_size(console_text)

draw_set_halign(fa_left)
draw_set_valign(fa_bottom)

text = keyboard_string
draw_text(0,room_height,text)


for (i = 0;i < size;i += 1)
    {
    text = ds_list_find_value(console_text,size-i-1)
    draw_text(0,room_height-16-16*i,text)
    }

if lifetime mod (room_speed) == 0 && !ds_list_empty(console_text)
    {
    ds_list_delete(console_text,0)
    }
