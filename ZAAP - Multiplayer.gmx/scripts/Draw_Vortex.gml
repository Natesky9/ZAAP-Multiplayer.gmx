var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

draw_sprite(spr_vortex,0,get_x,get_y)
draw_set_color(c_red)
draw_set_circle_precision(64)
var radius = get_mass
draw_circle(get_x,get_y,radius,true)
