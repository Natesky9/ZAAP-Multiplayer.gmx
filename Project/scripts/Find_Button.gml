var i

var size = ds_list_size(buttons)

for (i = 0;i < size;i += 1)
    {
    var get_map = ds_list_find_value(buttons,i)
    var get_x1 = ds_map_find_value(get_map,"x1")
    var get_x2 = ds_map_find_value(get_map,"x2")
    var get_y1 = ds_map_find_value(get_map,"y1")
    var get_y2 = ds_map_find_value(get_map,"y2")
    
    if point_in_rectangle(mouse_x,mouse_y,get_x1,get_y1,get_x2,get_y2)
    return get_map
    }
return -1
