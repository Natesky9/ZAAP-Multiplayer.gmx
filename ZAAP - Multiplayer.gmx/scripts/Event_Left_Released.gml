var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)/100
        
        if Action == input_action.create
            {
            if keyboard_check(vk_shift)
                {
                Action_Create(mouse_vector_x,mouse_vector_y,get_vector_direction,get_vector_speed)
                console("Shift create debug")
                exit
                }
            if !keyboard_check(vk_shift)
                {
                var nearest_star = find_nearest(entity_star_list,mouse_x,mouse_y,false)
                var nearest_vortex = find_nearest(entity_vortex_list,mouse_x,mouse_y,false)
                
                
                if is_undefined(nearest_star)
                && is_undefined(nearest_vortex)
                    {
                    Action_Create(mouse_vector_x,mouse_vector_y,get_vector_direction,get_vector_speed)
                    //duplicate isn't created here
                    exit
                    }
                
                if is_undefined(nearest_star)
                nearest_body = nearest_vortex
                
                if is_undefined(nearest_vortex)
                nearest_body = nearest_star
                
                if !is_undefined(nearest_star)
                and !is_undefined(nearest_vortex)
                nearest_body = choose_nearest(mouse_x,mouse_y,nearest_star,nearest_vortex)
                
                var get_x = ds_map_find_value(nearest_body,"x")
                var get_y = ds_map_find_value(nearest_body,"y")
                var get_mass = ds_map_find_value(nearest_body,"mass")
                var get_vector_direction = ds_map_find_value(nearest_body,"vector_direction")
                var get_vector_speed = ds_map_find_value(nearest_body,"vector_speed")
                
                var mouse_distance = point_distance(get_x,get_y,mouse_x,mouse_y)
                var mouse_direction = point_direction(get_x,get_y,mouse_x,mouse_y)
                
                var get_circ_vel = sqrt(Gravitational_Constant*get_mass*(1/mouse_distance))
                
var new_x = lengthdir_x(get_circ_vel,mouse_direction+90)
var new_y = lengthdir_y(get_circ_vel,mouse_direction+90)
//starting vector components
var cur_x = lengthdir_x(get_vector_speed,get_vector_direction)
var cur_y = lengthdir_y(get_vector_speed,get_vector_direction)
//combined vector components
var total_x = new_x + cur_x
var total_y = new_y + cur_y
//final vector
var final_vec_direction = point_direction(0,0,total_x,total_y)
var final_vec_speed = point_distance(0,0,total_x,total_y) 
                
                Action_Create(mouse_x,mouse_y,final_vec_direction,final_vec_speed)
                
                exit
                }
            //
            }
        //
        if Action == input_action.delete
            {
            Action_Delete()
            exit
            }
        }
    //
    case "Client_Window":
        {
        if Action == input_action.create
            {
            var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
            var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
            
            Packet_Write(packet.entity_create_asteroid,data.position,mouse_x,mouse_y,get_vector_direction,get_vector_speed,entity.asteroid)
            exit
            }
        }
    //
    default:
        {
        //change this to mouse vector
        Event_Left_Released_Menu()
        exit
        }
    }
