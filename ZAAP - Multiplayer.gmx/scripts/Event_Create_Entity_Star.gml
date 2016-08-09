//Creates a vortex and returns the number

show("This is a star, center of a system")
get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"mass",10000)
ds_map_add(get_entity,"vector_direction",get_vector_direction)
ds_map_add(get_entity,"vector_speed",get_vector_speed)
//add map for vector
ds_list_add(entity_star_list,get_entity)
return get_entity;
