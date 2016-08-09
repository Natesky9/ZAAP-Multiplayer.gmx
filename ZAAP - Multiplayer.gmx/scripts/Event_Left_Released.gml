var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        var get_vector_direction = point_direction(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)
        var get_vector_speed = point_distance(mouse_vector_x,mouse_vector_y,mouse_x,mouse_y)/100
        
        if Action == input_action.create
            {
            Action_Create(mouse_vector_x,mouse_vector_y,get_vector_direction,get_vector_speed)
            exit
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
