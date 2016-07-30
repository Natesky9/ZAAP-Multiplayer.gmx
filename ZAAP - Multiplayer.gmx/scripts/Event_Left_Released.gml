var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        
        if Action == input_action.create
            {
            Packet_Write(packet.entity_asteroid_create,mouse_x,mouse_y,get_vector_direction,get_vector_speed)
            exit
            }
        if Action == input_action.delete
            {
            if ds_list_size(entity_asteroid_list) == 0
            exit
            
            var nearest = ds_list_find_value(entity_asteroid_list,0)
            var get_x = ds_map_find_value(nearest,"x")
            var get_y = ds_map_find_value(nearest,"y")
            var nearest_distance = point_distance(mouse_x,mouse_y,get_x,get_y)
            for (var i = 0; i < ds_list_size(entity_asteroid_list);i += 1)
                {
                var get_entity = ds_list_find_value(entity_asteroid_list,i)
                var get_entity_x = ds_map_find_value(get_entity,"x")
                var get_entity_y = ds_map_find_value(get_entity,"y")
                var get_distance = point_distance(mouse_x,mouse_y,get_entity_x,get_entity_y)
                
                if get_distance < nearest_distance
                    {
                    nearest = get_entity
                    nearest_distance = get_distance
                    }
                }
            Event_Destroy_Asteroid(nearest)
            Packet_Write(packet.entity_asteroid_destroy,nearest)
            }
        }
    case "Client_Window":
        {
        if Action == input_action.create
            {
            var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
            var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
            
            Packet_Write(packet.entity_asteroid_create,mouse_x,mouse_y,get_vector_direction,get_vector_speed,entity.asteroid)
            exit
            }
        }
    default:
        {
        //change this to mouse vector
        Event_Left_Released_Menu()
        exit
        }
    }
