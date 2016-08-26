var get_list = argument[0]
var point_x = argument[1]
var point_y = argument[2]
var blacklist = argument[3]
//blacklist is the filtered entity to not choose

var point_in_gravity = true

if argument_count = 5
point_in_gravity = argument[4]
//point_in_gravity is a bool to pick only within mass or not

//
//tweak to have less optional arguments
//also change to be percentage distance, not real
//
var get_x
var get_y
var get_entity
var get_entity_x
var get_entity_y
var get_entity_mass
var get_distance
var nearest
var nearest_distance
var nearest_mass

if ds_list_size(get_list) == 0
return undefined

nearest = ds_list_find_value(get_list,0)
get_x = ds_map_find_value(nearest,"x")
get_y = ds_map_find_value(nearest,"y")
nearest_distance = point_distance(point_x,point_y,get_x,get_y)
for (var i = 0; i < ds_list_size(get_list);i += 1)
    {
    get_entity = ds_list_find_value(get_list,i)
    if get_entity != blacklist
        {
        get_entity_x = ds_map_find_value(get_entity,"x")
        get_entity_y = ds_map_find_value(get_entity,"y")
        get_entity_mass = ds_map_find_value(get_entity,"mass")
        get_distance = point_distance(point_x,point_y,get_entity_x,get_entity_y)
        
        if get_distance < nearest_distance
        and get_distance < get_entity_mass
        or !point_in_gravity
            {
            nearest = get_entity
            nearest_distance = get_distance
            }
        }
    }
if nearest == blacklist
return undefined

var nearest_mass = ds_map_find_value(nearest,"mass")
if get_distance < nearest_mass
or !point_in_gravity
return nearest

return undefined
