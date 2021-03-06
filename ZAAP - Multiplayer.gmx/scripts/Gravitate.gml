//first argument is the gravity
//second argument is the body
var get_source = argument0
var get_body_list = argument1
//--------------------------------//
//this can be optimized to be 1/7th the cost
var get_source_x = ds_map_find_value(get_source,"x")
var get_source_y = ds_map_find_value(get_source,"y")
var get_source_mass = ds_map_find_value(get_source,"mass")
//--------------------------------//
var get_size = ds_list_size(get_body_list)
for (var j = get_size-1;j >= 0;j -= 1)
    {
    //--------------------------------//
    var get_body = ds_list_find_value(get_body_list,j)
    //--------------------------------//
    var do_it = true
    //--------------------------------//
    if get_source == get_body
        {
        //show("Source is same as body, skipping")
        do_it = false
        }
    //--------------------------------//
    if is_undefined(get_body)
        {
        show("Error, body does not exist!")
        do_it = false
        }
    //--------------------------------//
    if do_it
        {
        var get_body_x = ds_map_find_value(get_body,"x")
        var get_body_y = ds_map_find_value(get_body,"y")
        
        var get_distance = point_distance(get_source_x,get_source_y,get_body_x,get_body_y)
        if get_distance < get_source_mass
            {
            var get_body_mass = ds_map_find_value(get_body,"mass")
            var get_direction = point_direction(get_body_x,get_body_y,get_source_x,get_source_y)
            var get_pull = Gravitational_Constant*get_source_mass/sqr(get_distance)
            vector_add(get_body,get_pull,get_direction,true)
            }
        //--------------------------------//
        //"Suck in" condition
        //--------------------------------//
            
        if get_distance < get_source_mass/100
            {
            if get_body_list == entity_projectile_list
                {
                Event_Destroy_Projectile(get_body)
                console("Deleted Projectile")
                }
            if get_body_list == entity_object_list
                {
                Event_Destroy_Object(get_body)
                console("Deleted Object")
                }
            if get_body_list == entity_asteroid_list
                {
                Event_Destroy_Asteroid(get_body)
                console("Deleted Asteroid")
                }
            //skip ships
            if get_body_list == entity_station_list
                {
                Event_Destroy_Station(get_body)
                console("Deleted Station")
                }
            if get_body_list == entity_star_list
                {
                Event_Destroy_Star(get_body)
                console("Deleted Star")
                }
            if get_body_list == entity_vortex_list
                {
                Event_Destroy_Vortex(get_body)
                console("Deleted Vortex")
                }
            }
        }
    //--------------------------------//
    }
//--------------------------------//
