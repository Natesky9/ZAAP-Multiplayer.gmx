//core loop for all entities
for (var a = 0;a < ds_list_size(entity_list);a += 1)
    {//main step
    //get the list
    var get_list = ds_list_find_value(entity_list,a)
    //loop through the list
    for (var b = 0;b < ds_list_size(get_list);b += 1)
        {
        //get the entity
        var get_entity = ds_list_find_value(get_list,b)
        //
        //motion
        //
        //find the position
        var get_x = ds_map_find_value(get_entity,"x")
        var get_y = ds_map_find_value(get_entity,"y")
        //find the vector
        var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
        var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")
        //calculate the new position
        var new_x = get_x + lengthdir_x(get_vector_speed,get_vector_direction)
        var new_y = get_y + lengthdir_y(get_vector_speed,get_vector_direction)
        //replace the values
        ds_map_replace(get_entity,"x",new_x)
        ds_map_replace(get_entity,"y",new_y)
        //end motion
        //
        }
    }
//



