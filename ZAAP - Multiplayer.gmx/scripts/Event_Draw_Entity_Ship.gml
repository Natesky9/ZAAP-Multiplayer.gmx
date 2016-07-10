//draw all the Asteroid Entities
var size = ds_list_size(entity_ship_list)

var max_distance = 128
nearest_ship_distance = max_distance
nearest_ship = -1

for (i = 0;i < size;i += 1)
    {
    var get_entity = ds_list_find_value(entity_ship_list,i)
    if !is_undefined(get_entity)
        {
        Draw_Ship(get_entity)
        }
    }

if nearest_ship != -1
    {
    if is_undefined(nearest_ship)
    exit
    
    var get_x = ds_map_find_value(nearest_ship,"x")
    var get_y = ds_map_find_value(nearest_ship,"y")
    
    draw_set_color(c_blue)
    draw_line(mouse_x,mouse_y,get_x,get_y)
    }

