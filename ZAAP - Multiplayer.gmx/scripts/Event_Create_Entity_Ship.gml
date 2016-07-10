//Creates a ship and returns the number

show("This is a ship")
var grid_width = 5
var grid_height = 5

var get_x = argument[0]
var get_y = argument[1]
var get_entity = ds_map_create()

//ds_map_add(new_entity,"ssn",get_ssn)
ds_map_add(get_entity,"brake",false)
ds_map_add(get_entity,"throttle",false)
ds_map_add(get_entity,"steer",0)
ds_map_add(get_entity,"x",get_x)
ds_map_add(get_entity,"y",get_y)
ds_map_add(get_entity,"direction",0)
ds_map_add(get_entity,"vector_direction",0)
ds_map_add(get_entity,"vector_speed",0)
ds_map_add(get_entity,"Controller",0)
ds_map_add(get_entity,"grid_width",grid_width)
ds_map_add(get_entity,"grid_height",grid_height)
var get_grid = ds_grid_create(grid_width,grid_height)
ds_grid_clear(get_grid,1)
ds_map_add(get_entity,"grid",get_grid)

ds_list_add(entity_ship_list,get_entity)
return get_entity
