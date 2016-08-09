var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

draw_set_color(c_yellow)
draw_rectangle(get_x-50,get_y-50,get_x+50,get_y+50,false)

draw_set_color(c_black)
draw_text(get_x,get_y,"entity.station")
