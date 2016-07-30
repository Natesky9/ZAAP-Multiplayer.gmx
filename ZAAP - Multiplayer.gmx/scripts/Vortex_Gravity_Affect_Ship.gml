
var size = ds_list_size(entity_ship_list)
for (var i = size-1;i >= 0;i -= 1)
    {//interact with ships
    var get_other_entity = ds_list_find_value(entity_ship_list,i)
    var get_other_x = ds_map_find_value(get_other_entity,"x")
    var get_other_y = ds_map_find_value(get_other_entity,"y")
    
    var get_distance = point_distance(get_x,get_y,get_other_x,get_other_y)
    if get_distance < mass
        {//gravity
        var get_direction = point_direction(get_other_x,get_other_y,get_x,get_y)
        var get_pull = get_mass/sqr(get_distance)
        vector_add(get_other_entity,get_pull,get_direction)
        }
    }

