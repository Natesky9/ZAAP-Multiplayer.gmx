//Creates an asteroid and returns the number

show("This is an asteroid")
var get_x = argument[0]
var get_y = argument[1]
get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"direction",0)
ds_map_add(get_entity,"vector_direction",0)
ds_map_add(get_entity,"vector_speed",0)
ds_map_add(get_entity,"mass",10)
ds_map_add(get_entity,"primary",0)
ds_map_add(get_entity,"argument",0)
ds_map_add(get_entity,"apoapsis",0)
ds_map_add(get_entity,"periapsis",0)

//add map for vector
ds_list_add(entity_asteroid_list,get_entity)
return get_entity;
