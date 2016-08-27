var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

draw_set_color(c_yellow)
draw_set_alpha(.5)
draw_circle(get_x,get_y,get_mass,false)
draw_set_alpha(1)

draw_set_color(c_orange)
draw_circle(get_x,get_y,min(get_mass/100,view_size/10000),false)

draw_set_color(c_black)
draw_text(get_x,get_y,"entity.star")

var get_list = ds_map_find_value(get_entity,"satellite_list")
var count = ds_list_size(get_list)
var text = "satellite count: " + string(count)
draw_set_font(Courier_Large)
draw_text(get_x,get_y-100,text)
draw_set_font(Courier)
