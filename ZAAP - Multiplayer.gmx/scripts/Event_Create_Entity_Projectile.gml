//Creates a projectile and returns the number

show("This is a projectile, it collides with things")
var get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"type",entity.projectile)
ds_map_add(get_entity,"mass",1)
ds_map_add(get_entity,"primary",undefined)
var satellite_list = ds_list_create()
ds_map_add(get_entity,"satellite_list",satellite_list)
ds_map_add(get_entity,"vector_direction",get_vector_direction)
ds_map_add(get_entity,"vector_speed",get_vector_speed)
//add map for vector
ds_list_add(entity_projectile_list,get_entity)
ds_list_add(null_primary_list,get_entity)
return get_entity;
