//draw all the Asteroid Entities
var size = ds_list_size(entity_asteroid_list)


for (i = 0;i < size;i += 1)
    {
    var get_entity = ds_list_find_value(entity_asteroid_list,i)
    var get_x = ds_map_find_value(get_entity,"x")
    var get_y = ds_map_find_value(get_entity,"y")
    draw_sprite(sprite0,0,get_x,get_y)
    }
