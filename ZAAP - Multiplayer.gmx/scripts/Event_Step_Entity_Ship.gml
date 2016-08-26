get_list = entity_ship_list
for (var i = 0;i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    if !is_undefined(get_entity)
        {
        //Get_Primary(get_step_entity) MOVED to global
        
        //Ship_Gravity(get_entity) MOVED to global
        
        //Event_Step_Entity_Motion(get_entity) MOVED to global
        
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
            vector_add(get_entity,100,get_direction)
            }
        //end throttle
        
        
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
        }
    }




