var nearest_body = argument0
var input_x = argument1
var input_y = argument2

var get_x = ds_map_find_value(nearest_body,"x")
var get_y = ds_map_find_value(nearest_body,"y")
var get_mass = ds_map_find_value(nearest_body,"mass")
var get_vector_direction = ds_map_find_value(nearest_body,"vector_direction")
var get_vector_speed = ds_map_find_value(nearest_body,"vector_speed")

var body_distance = point_distance(get_x,get_y,input_x,input_y)

var get_circ_vel = sqrt(Gravitational_Constant*get_mass*(1/body_distance))

return get_circ_vel
