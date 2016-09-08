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
                
                var input_x = mouse_x
                var input_y = mouse_y
                
                var get_circ_vel = get_velocity_for_circular_orbit(nearest_body,input_x,input_y)
                
                var get_perp_ang = get_perpendicular_angle(nearest_body,input_x,input_y,true)
                
//fix//
var new_x = lengthdir_x(get_circ_vel,get_perp_angle)
var new_y = lengthdir_y(get_circ_vel,get_perp_angle)
//starting vector components
var cur_x = lengthdir_x(get_vector_speed,get_vector_direction)
var cur_y = lengthdir_y(get_vector_speed,get_vector_direction)
//combined vector components
var total_x = new_x + cur_x
var total_y = new_y + cur_y
//final vector
var final_vec_direction = point_direction(0,0,total_x,total_y)
var final_vec_speed = point_distance(0,0,total_x,total_y)
//fix//

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
