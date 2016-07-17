var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        Packet_Write(packet.entity_asteroid_create,mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    case "Client_Window":
        {
        var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        
        Packet_Write(packet.entity_asteroid_create,mouse_x,mouse_y,get_vector_direction,get_vector_speed,entity.asteroid)
        exit
        }
    default:
        {
        Event_Left_Released_Menu()
        exit
        }
    }
