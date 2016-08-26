var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

draw_set_color(c_white)
draw_set_alpha(.1)
draw_circle(get_x,get_y,get_mass,false)
draw_set_alpha(1)

draw_set_color(c_green)
draw_circle(get_x,get_y,get_mass/100,false)

draw_set_color(c_black)
draw_text(get_x,get_y,"entity.planet")
