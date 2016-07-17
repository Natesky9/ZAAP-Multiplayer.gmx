if field_focus == -2
    {
    exit
    }

switch ds_stack_top(menu_stack)
    {
    case "Client_Window":
        {
        Client_Request_Ship_Control()
        exit
        }
    case "Server_Window":
        {
        Packet_Write(packet.entity_vortex_create,mouse_x,mouse_y)
        exit
        }
    default:
        {
        exit
        }
    }
    

