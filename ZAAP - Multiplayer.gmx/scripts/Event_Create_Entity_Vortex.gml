//Creates a vortex and returns the number

show("This is a vortex, it sucks things in")
var get_x = argument[0]
var get_y = argument[1]
get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"vector_direction",0)
ds_map_add(get_entity,"vector_speed",0)
//add map for vector
ds_list_add(entity_vortex_list,get_entity)
return get_entity;
