for (var i = 0;i < ds_list_size(null_primary_list);i += 1)
    {
    var get_entity = ds_list_find_value(null_primary_list,i)
    if !is_undefined(get_entity)
        {
        //manual reset not necessary
        //recursive_sum_x = 0
        //recursive_sum_y = 0
        recursive_gravity(get_entity)
        //loop through lists of lists until no more lists
        }
    }
