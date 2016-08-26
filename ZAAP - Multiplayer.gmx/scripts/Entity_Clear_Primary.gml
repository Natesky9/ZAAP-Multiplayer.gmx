var get_entity = argument0

var get_primary = ds_map_find_value(get_entity,"primary")
var get_satellite_list = ds_map_find_value(get_entity,"satellite_list")

//reset all satellites' primaries
for (var i = 0;i < ds_list_size(get_satellite_list);i += 1)
    {
    var get_other_entity = ds_list_find_index(get_satellite_list,i)
    if !is_undefined(get_other_entity)
        {
        ds_map_replace(get_other_entity,"primary",undefined)
        }
    }
//done resetting satellites' primaries

//erase current entity from null entity list
if is_undefined(get_primary)
    {
    var pos = ds_list_find_index(null_primary_list,get_entity)
    if !is_undefined(pos)
        {
        ds_list_delete(null_primary_list,pos)
        }
    }

if !is_undefined(get_primary)
    {//erase it from the primary's list
    var get_other_satellite_list = ds_map_find_value(get_entity,"satellite_list")
    var pos = ds_list_find_index(get_other_satellite_list,get_entity)
    if !is_undefined(pos)
        {
        ds_list_delete(get_other_satellite_list,pos)
        }
    //done erasing from the primary's list
    }



