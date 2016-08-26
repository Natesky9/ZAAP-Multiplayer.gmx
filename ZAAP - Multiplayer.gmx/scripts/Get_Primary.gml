//core loop for all entities
for (var a = 0;a < ds_list_size(entity_list);a += 1)
    {//main step
    var get_list = ds_list_find_value(entity_list,a)
    for (var b = 0;b < ds_list_size(get_list);b += 1)
        {
        //
        var get_entity = ds_list_find_value(get_list,b)
        //
        var get_x = ds_map_find_value(get_entity,"x")
        var get_y = ds_map_find_value(get_entity,"y")
        var get_primary = ds_map_find_value(get_entity,"primary")
        
        //find the nearest bodies
        var nearest_vortex = find_nearest(entity_vortex_list,get_x,get_y,get_entity,true)
        var nearest_star = find_nearest(entity_star_list,get_x,get_y,get_entity,true)
        var nearest_planet = find_nearest(entity_planet_list,get_x,get_y,get_entity,true)
        
        //set to undefined for temp
        var nearest = undefined
        
        //--------------------------------//
        //define nearest
        //--------------------------------//
        if is_undefined(nearest_vortex)
            {
            //
            if is_undefined(nearest_star)
                {
                //
                if is_undefined(nearest_planet)
                    {//!vortex !star !planet
                    nearest = undefined
                    }
                if !is_undefined(nearest_planet)
                    {//!vortex !star planet
                    nearest = nearest_planet
                    }
                //
                }
            if !is_undefined(nearest_star)
                {
                //
                if is_undefined(nearest_planet)
                    {//!vortex star !planet
                    nearest = nearest_star
                    }
                if !is_undefined(nearest_planet)
                    {//!vortex star planet
                    nearest = choose_nearest(get_x,get_y,nearest_planet,nearest_star)
                    }
                //
                }
            //
            }
        
        if !is_undefined(nearest_vortex)
            {
            //
            if is_undefined(nearest_star)
                {
                //
                if is_undefined(nearest_planet)
                    {//vortex !star !planet
                    nearest = nearest_vortex
                    }
                if !is_undefined(nearest_planet)
                    {//vortex !star planet
                    nearest = choose_nearest(get_x,get_y,nearest_vortex,nearest_planet)
                    }
                //
                }
            if !is_undefined(nearest_star)
                {
                //
                if is_undefined(nearest_planet)
                    {//vortex star !planet
                    nearest = choose_nearest(get_x,get_y,nearest_vortex,nearest_star)
                    }
                if !is_undefined(nearest_planet)
                    {//vortex star planet
                    nearest = choose_nearest(get_x,get_y,nearest_vortex,nearest_star)
                    nearest = choose_nearest(get_x,get_y,nearest,nearest_planet)
                    }
                //
                }
            //
            }
        //--------------------------------//
        //end define nearest
        //--------------------------------//
        
        
        //--------------------------------//
        //REMOVE
        //--------------------------------//
        if !is_undefined(nearest)
            {
            var other_primary = ds_map_find_value(nearest,"primary")
            if other_primary == get_entity
                {
                //if the other entity's primary points to this, make this a sole primary
                ds_map_replace(get_entity,"primary",undefined)
                exit
                }
            ds_map_replace(get_entity,"primary",nearest)
            }
        if is_undefined(nearest)
            {//undefined event
            }
        //--------------------------------//
        //remove?
        //--------------------------------//
            
            
        
        //--------------------------------//
        //if it had no primary but now does
        //--------------------------------//
        if get_primary == undefined and nearest != undefined
            {
            //--------------------------------//
            //remove from null list
            //--------------------------------//
            var pos = ds_list_find_index(null_primary_list,get_entity)
            
            if !is_undefined(pos)
                {//shouldn't be undefined
                ds_list_delete(null_primary_list,pos)
                }
            //--------------------------------//
            //end removing from null list
            //--------------------------------//
            
            //--------------------------------//
            //add to the new primary's list
            var nearest_satellite_list = ds_map_find_value(nearest,"satellite_list")
            ds_list_add(nearest_satellite_list,get_entity)
            ds_map_replace(get_entity,"primary",nearest)
            }
        //
        if get_primary != undefined and nearest == undefined
            {//detect primary change from primary to no primary
            var get_other_satellite_list = ds_map_find_value(get_primary,"satellite_list")
            var pos = ds_list_find_index(get_other_satellite_list,get_entity)
            if !is_undefined(pos)
                {
                ds_list_delete(get_other_satellite_list,pos)
                }
            //replace primary with undefined
            ds_list_add(null_primary_list,get_entity)
            ds_map_replace(get_entity,"primary",undefined)
            //search for second primary instead of leaving nearest undefined
            }
        //
        }
    }
//




