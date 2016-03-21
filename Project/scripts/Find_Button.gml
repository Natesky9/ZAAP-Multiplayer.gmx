var i

var current_menu = ds_stack_top(menu_stack);

var size = ds_list_size(current_menu);

for (i = 0;i < size;i += 1)
    {
    var get_map = ds_list_find_value(current_menu,i)
    var get_x1 = ds_map_find_value(get_map,"x1")
    var get_x2 = ds_map_find_value(get_map,"x2")
    var get_y1 = ds_map_find_value(get_map,"y1")
    var get_y2 = ds_map_find_value(get_map,"y2")
    
    if ((mouse_x > get_x1 && mouse_x < get_x2)
    || (mouse_x < get_x1 && mouse_x > get_x2))
    && ((mouse_y > get_y1 && mouse_y < get_y2)
    || (mouse_y < get_y1 && mouse_y > get_y2))
        {
        return get_map
        }
    }
return -1
