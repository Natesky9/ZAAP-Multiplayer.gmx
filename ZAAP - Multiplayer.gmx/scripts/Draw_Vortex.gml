var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

draw_sprite(spr_vortex,0,get_x,get_y)
draw_set_color(c_red)
draw_set_circle_precision(64)
var gravity_radius = get_mass
var vortex_radius = get_mass/100

draw_set_color(c_green)
draw_circle(get_x,get_y,gravity_radius,true)

draw_set_alpha(.1)
draw_circle_color(get_x,get_y,vortex_radius,c_black,c_red,false)
draw_set_alpha(1)

var satellite_list = ds_map_find_value(get_entity,"satellite_list")
draw_text(get_x,get_y-1000,"satellite number: " + string(ds_list_size(satellite_list)))
