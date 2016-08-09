var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")
var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")

var get_x2 = get_x + lengthdir_x(get_vector_speed*view_size/100,get_vector_direction+180)
var get_y2 = get_y + lengthdir_y(get_vector_speed*view_size/100,get_vector_direction+180)

draw_set_color(c_red)
draw_circle(get_x,get_y,min(100,view_size/100),false)

draw_line_width(get_x,get_y,get_x2,get_y2,min(100,view_size/100))

draw_set_color(c_black)
draw_text(get_x,get_y,"entity.projectile")
