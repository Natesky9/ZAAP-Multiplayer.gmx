var get_entity = argument0
//Throttle
var get_throttle = ds_map_find_value(get_entity,"throttle")
var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_brake = ds_map_find_value(get_entity,"brake")
var get_direction = ds_map_find_value(get_entity,"direction")
var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")

if get_throttle
    {
    var new_x = lengthdir_x(.1,get_direction)
    var new_y = lengthdir_y(.1,get_direction)
    
    var cur_x = lengthdir_x(get_vector_speed,get_vector_direction)
    var cur_y = lengthdir_y(get_vector_speed,get_vector_direction)
    
    var total_x = new_x + cur_x
    var total_y = new_y + cur_y
    
    var final_vec_direction = point_direction(0,0,total_x,total_y)
    var final_vec_speed =point_distance(0,0,total_x,total_y)
    
    ds_map_replace(get_entity,"vector_direction",final_vec_direction)
    ds_map_replace(get_entity,"vector_speed",final_vec_speed)
    }
//end throttle

//motion
var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")

var new_x = get_x + lengthdir_x(get_vector_speed,get_vector_direction)
var new_y = get_y + lengthdir_y(get_vector_speed,get_vector_direction)

ds_map_replace(get_entity,"x",new_x)
ds_map_replace(get_entity,"y",new_y)
//end motion

//brake
if get_brake
    {
    var brake_amount = 1.1
    var new_vector_speed = get_vector_speed / brake_amount
    ds_map_replace(get_entity,"vector_speed",new_vector_speed)
    }

//Steer
var get_steer = ds_map_find_value(get_entity,"steer")
var steer_amount = 4
//get steer amount
if get_steer != 0
    {
    ds_map_replace(get_entity,"direction",get_direction - get_steer * steer_amount)
    }
//end steer

//clamp speed to value
var max_speed = 8
var vector_speed = ds_map_find_value(get_entity,"vector_speed")
var new_speed = clamp(vector_speed,-max_speed,max_speed)
