lifetime += 1
var mode = ds_stack_top(menu_stack)
switch mode
    {
    case "Client_Window":
        {
        if !((lifetime) mod 30) and (SSS != -1)
            {
            Packet_Write(packet.ping_request)
            }
        exit
        }
    case "Server_Window":
        {
        exit
        }
    default:
        {
        //if it is not client or server, do regular menu function
        Event_Step_Engine_Drag_Button()
        exit
        }
    }

