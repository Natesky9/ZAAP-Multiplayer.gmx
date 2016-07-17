var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")

draw_sprite(spr_vortex,0,get_x,get_y)
draw_set_color(c_red)
draw_set_circle_precision(64)
draw_circle(get_x,get_y,1024,true)
