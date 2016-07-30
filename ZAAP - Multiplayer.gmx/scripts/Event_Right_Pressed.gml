var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        var get_instance = ds_list_find_value(entity_asteroid_list,0)
        if !is_undefined(get_instance)
            {
            Event_Destroy_Asteroid(get_instance)
            Packet_Write(packet.entity_asteroid_destroy,get_instance)
            }
        if is_undefined(get_instance)
            {
            console("ERROR_Server")
            }
        exit
        }
    case "Client_Window":
        {
        var get_instance = ds_list_find_value(entity_asteroid_list,0)
        if !is_undefined(get_instance)
            {
            var get_instance = ds_map_find_value(get_instance,"ssn")
            Packet_Write(packet.entity_asteroid_destroy,get_instance)
            }
        if is_undefined(get_instance)
            {
            //console("ERROR_Client")
            }
        exit
        }
    default:
        {
        Event_Right_Pressed_Menu()
        exit
        }
    }
