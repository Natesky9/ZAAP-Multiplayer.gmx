//generate a universe
console("//-------------------//")
console("//Generating Universe//")
console("//-------------------//")

if find_nearest(entity_vortex_list,mouse_x,mouse_y,false,true) == undefined
    {//create a vortex
    Packet_Write(packet.entity_create_vortex,data.position,mouse_x,mouse_y,0,0)
    exit
    }

var nearest_vortex = find_nearest(entity_vortex_list,mouse_x,mouse_y,false,true)
show("nearest vortex " + string(nearest_vortex))
var get_x = ds_map_find_value(nearest_vortex,"x")
var get_y = ds_map_find_value(nearest_vortex,"y")
var get_mass = ds_map_find_value(nearest_vortex,"mass")
repeat 7
    {
    var get_dist = random(get_mass-10000)+10000
    var get_angle = random(360)
    var new_x = get_x + lengthdir_x(get_dist,get_angle)
    var new_y = get_y + lengthdir_y(get_dist,get_angle)
    
    var get_type = choose(entity.star,entity.asteroid)
    
    var get_circ_vel = get_velocity_for_circular_orbit(nearest_vortex,new_x,new_y)
    var get_perp_angle = get_perpendicular_angle(nearest_vortex,new_x,new_y,false)
    if get_type == entity_star
        {
        Packet_Write(packet.entity_create_star,data.position,new_x,new_y,get_perp_angle,get_circ_vel)
        repeat 7
            {
            var get_dist_2 = random(10000-1000) + 1000
            var get_angle_2 = random(360)
            var new_x_2 = new_x + lengthdir_x(get_dist_2,get_angle_2)
            var new_y_2 = new_y + lengthdir_y(get_dist_2,get_engle_2)
            
            get_circ_vel = get_velocity_for_circular_orbit(/*get entity ERROR*/)
            Packet_Write(packet.entity_create_asteroid,data.position,new_x_2,new_y_2/*ERROR*/)
            }
        
        }
    console("Created star!")
    }
