var button = argument0

var button_color = ds_map_find_value(button,"color")
var button_text = ds_map_find_value(button,"text")
var button_text_color = ds_map_find_value(button,"text_color")
var button_pressed = ds_map_find_value(button,"pressed")
var button_x1 = ds_map_find_value(button,"x1")
var button_x2 = ds_map_find_value(button,"x2")
var button_y1 = ds_map_find_value(button,"y1")
var button_y2 = ds_map_find_value(button,"y2")
var button_text_x = mean(button_x1,button_x2)
var button_text_y = mean(button_y1,button_y2)

if !button_pressed
    {//not pressed
    draw_set_color(button_color)
    draw_rectangle(button_x1,button_y1,button_x2,button_y2,false)
    draw_set_color(button_text_color)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text(button_text_x,button_text_y,button_text)
    }
else
    {
    draw_set_color(c_gray)
    draw_rectangle(button_x1,button_y1+8,button_x2,button_y2+8,false)
    draw_set_color(c_red)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text(button_text_x,button_text_y+8,button_text)
    }

