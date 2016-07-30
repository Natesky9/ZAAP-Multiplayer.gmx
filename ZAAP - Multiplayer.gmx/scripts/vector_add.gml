//input arguments
var get_entity = argument[0]
var get_add_vector_magnitude = argument[1]
var get_add_vector_direction = argument[2]
//update magnitude to reflect mass
var get_entity_mass = ds_map_find_value(get_entity,"mass")
get_add_vector_magnitude = get_add_vector_magnitude / get_entity_mass
//starting vector
var get_current_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_current_vector_speed = ds_map_find_value(get_entity,"vector_speed")
//input vector components
var new_x = lengthdir_x(get_add_vector_magnitude,get_add_vector_direction)
var new_y = lengthdir_y(get_add_vector_magnitude,get_add_vector_direction)
//starting vector components
var cur_x = lengthdir_x(get_current_vector_speed,get_current_vector_direction)
var cur_y = lengthdir_y(get_current_vector_speed,get_current_vector_direction)
//combined vector components
var total_x = new_x + cur_x
var total_y = new_y + cur_y
//final vector
var final_vec_direction = point_direction(0,0,total_x,total_y)
var final_vec_speed =point_distance(0,0,total_x,total_y)
//update entity vector
ds_map_replace(get_entity,"vector_direction",final_vec_direction)
ds_map_replace(get_entity,"vector_speed",final_vec_speed)
