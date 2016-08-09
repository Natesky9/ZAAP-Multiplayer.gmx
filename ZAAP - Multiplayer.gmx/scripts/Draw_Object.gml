var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")


draw_set_color(c_blue)
draw_circle(get_x,get_y,min(10,view_size/100),false)

draw_set_color(c_black)
draw_text(get_x,get_y,"entity.object")
