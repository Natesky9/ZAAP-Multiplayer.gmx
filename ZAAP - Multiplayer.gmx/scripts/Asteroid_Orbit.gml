var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")

for (var i = 0;i < ds_list_size(entity_vortex_list);i += 1)
    {
    var get_other_entity = ds_list_find_value(entity_vortex_list,i)
    var get_other_x = ds_map_find_value(get_other_entity,"x")
    var get_other_y = ds_map_find_value(get_other_entity,"y")
    var get_other_mass = ds_map_find_value(get_other_entity,"mass")
    var get_distance = point_distance(get_x,get_y,get_other_x,get_other_y)
    
    if get_distance < get_other_mass
        {
        is_orbiting = true
        var get_primary = ds_map_find_value(get_entity,"primary")
            ds_map_replace(get_entity,"primary",get_other_entity)
            
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
        
        }
    }
