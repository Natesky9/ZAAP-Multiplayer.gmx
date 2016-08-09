//draw all the Vortex Entities
var size = ds_list_size(entity_star_list)

for (i = 0;i < size;i += 1)
    {
    var get_entity = ds_list_find_value(entity_star_list,i)
    if !is_undefined(get_entity)
        {
        Draw_Star(get_entity)
        }
    }
