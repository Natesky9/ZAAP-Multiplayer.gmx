//draw all the Asteroid Entities
var size = ds_list_size(entity_asteroid_list)
var get_text

for (i = 0;i < size;i += 1)
    {
    var get_entity = ds_list_find_value(entity_asteroid_list,i)
    if !is_undefined(get_entity)
        {
        Draw_Asteroid(get_entity)
        }
    }
