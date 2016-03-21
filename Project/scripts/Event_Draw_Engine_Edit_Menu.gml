var x1 = ds_map_find_value(button_selected,"x1")
var x2 = ds_map_find_value(button_selected,"x2")
var y1 = ds_map_find_value(button_selected,"y1")
var y2 = ds_map_find_value(button_selected,"y2")
var button_color = ds_map_find_value(button_selected,"color")
var button_text = button_search_value("edit_button_text")
//var button_text = ds_map_find_value(button_selected,"text")
var button_text_color = ds_map_find_value(button_selected,"text_color")
var button_kind = ds_map_find_value(button_selected,"kind")
var button_function = ds_map_find_value(button_selected,"function")
var button_value = ds_map_find_value(button_selected,"value")

var width = x2 - x1
var height = y2 - y1

draw_set_colour(button_color)
draw_rectangle(room_width/2 - width/2,room_height/2 - height/2,room_width/2 + width/2,room_height/2 + height/2,false)
draw_set_color(button_text_color)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(room_width/2,room_height/2,button_text)

draw_set_color(c_black)
draw_text(room_width/2,20,"Button Function#" + button_function)


