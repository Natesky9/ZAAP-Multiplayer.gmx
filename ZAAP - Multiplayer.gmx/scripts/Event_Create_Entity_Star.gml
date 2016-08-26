//Creates a vortex and returns the number

show("This is a star, center of a system")
get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"type",entity.star)
ds_map_add(get_entity,"mass",10000)
ds_map_add(get_entity,"vector_direction",get_vector_direction)
ds_map_add(get_entity,"vector_speed",get_vector_speed)
ds_map_add(get_entity,"primary",undefined)
var satellite_list = ds_list_create()
ds_map_add(get_entity,"satellite_list",satellite_list)
ds_map_add(get_entity,"argument",0)
ds_map_add(get_entity,"apoapsis",0)
ds_map_add(get_entity,"periapsis",0)
//add map for vector
ds_list_add(entity_star_list,get_entity)
ds_list_add(null_primary_list,get_entity)
return get_entity;
