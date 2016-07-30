var get_entity = argument0

Ship_Gravity(get_entity)

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
    vector_add(get_entity,.1,get_direction)
    }
//end throttle

Event_Step_Entity_Motion(get_entity)

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
