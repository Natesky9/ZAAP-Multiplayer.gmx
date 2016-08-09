//Creates an asteroid and returns the number

show("This is an asteroid")
//var get_x = argument[0]
//var get_y = argument[1]
//var get_vector_speed = argument[2]
//var get_vector_speed = argument[3]
get_entity = create_map()
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"direction",0)//possibly change this?
ds_map_add(get_entity,"vector_direction",get_vector_direction)
ds_map_add(get_entity,"vector_speed",get_vector_speed)
ds_map_add(get_entity,"mass",100)
ds_map_add(get_entity,"primary",0)
ds_map_add(get_entity,"argument",0)
ds_map_add(get_entity,"apoapsis",0)
ds_map_add(get_entity,"periapsis",0)

//add map for vector
ds_list_add(entity_asteroid_list,get_entity)
return get_entity;
