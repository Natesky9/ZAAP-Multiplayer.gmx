var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")

var nearest_star = find_nearest(entity_star_list,get_x,get_y,get_entity)
var nearest_vortex = find_nearest(entity_vortex_list,get_x,get_y,get_entity)

if is_undefined(nearest_star)
&& is_undefined(nearest_vortex)
    {//if both are undefined
    //primary is undefined
    ds_map_replace(get_entity,"primary",undefined)
    exit
    }

var get_other_entity

//if the nearest star is undefined
//choose the nearest vortex
if is_undefined(nearest_star)
get_other_entity = nearest_vortex

//if the nearest vortex is undefined
//choose the nearest star
if is_undefined(nearest_vortex)
get_other_entity = nearest_star

//if neither are undefined
//choose closest
if !is_undefined(nearest_star)
and !is_undefined(nearest_vortex)
get_other_entity = choose_nearest(get_x,get_y,nearest_star,nearest_vortex)




var get_other_x = ds_map_find_value(get_other_entity,"x")
var get_other_y = ds_map_find_value(get_other_entity,"y")
var get_other_mass = ds_map_find_value(get_other_entity,"mass")
var get_distance = point_distance(get_x,get_y,get_other_x,get_other_y)

is_orbiting = true

//primary change detection
var get_primary = ds_map_find_value(get_entity,"primary")
if get_primary != get_other_entity
    {
    //change the entity's primary
    ds_map_replace(get_entity,"primary",get_other_entity)
    
    if !is_undefined(get_primary)
        {//if it had a primary, remove it from the primary's list
        var get_old_primary_satellite_list = ds_map_find_value(get_primary,"satellite_list")
        
        var pos = ds_list_find_index(get_old_primary_satellite_list,get_entity)
        
        if is_undefined(pos)
            {
            console("Error, this entity wasn't in its primary's sattelite list!")
            }
        if !is_undefined(pos)
            {//remove the satellite from the previous primary's list
            ds_list_delete(get_old_primary_satellite_list,pos)
            var ent1 = "Entity [" + string(get_entity) + "]"
            var ent2 = "Entity [" + string(get_primary) + "]"
            console(ent1 + " has left the influence of " + ent2)
            }
        }
    if !is_undefined(get_other_entity)
        {//if it has a new primary, add it to the new primary's list
        var get_new_primary_satellite_list = ds_map_find_value(get_other_entity,"satellite_list")
        
        ds_list_add(get_new_primary_satellite_list,get_entity)
        }
    }
//end primary change detection


//

var get_periapsis = ds_map_find_value(get_entity,"periapsis")
if (get_distance < get_periapsis)
or !get_periapsis
    {
    ds_map_replace(get_entity,"periapsis",get_distance)
    var get_argument = point_direction(get_other_x,get_other_y,get_x,get_y)
    ds_map_replace(get_entity,"argument",get_argument)
    }

var get_apoapsis = ds_map_find_value(get_entity,"apoapsis")
ds_map_replace(get_entity,"apoapsis",max(get_apoapsis,get_distance))
