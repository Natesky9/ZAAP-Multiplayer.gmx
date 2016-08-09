//Creates a ship and returns the number

show("This is a ship")
var grid_width = 5
var grid_height = 5

get_entity = create_map()
ds_map_add(get_entity,"brake",false)
ds_map_add(get_entity,"throttle",false)
ds_map_add(get_entity,"steer",0)
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"direction",0)
ds_map_add(get_entity,"vector_direction",get_vector_direction)
ds_map_add(get_entity,"vector_speed",get_vector_speed)
ds_map_add(get_entity,"mass",1000)
ds_map_add(get_entity,"Controller",0)
ds_map_add(get_entity,"grid_width",grid_width)
ds_map_add(get_entity,"grid_height",grid_height)
var get_grid = ds_grid_create(grid_width,grid_height)
ds_grid_clear(get_grid,1)
ds_map_add(get_entity,"grid",get_grid)

ds_list_add(entity_ship_list,get_entity)
return get_entity
