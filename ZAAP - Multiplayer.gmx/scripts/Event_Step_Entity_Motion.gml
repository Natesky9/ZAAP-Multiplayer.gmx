var get_entity = argument0
//motion

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")

var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")

var new_x = get_x + lengthdir_x(get_vector_speed,get_vector_direction)
var new_y = get_y + lengthdir_y(get_vector_speed,get_vector_direction)

ds_map_replace(get_entity,"x",new_x)
ds_map_replace(get_entity,"y",new_y)
//end motion
