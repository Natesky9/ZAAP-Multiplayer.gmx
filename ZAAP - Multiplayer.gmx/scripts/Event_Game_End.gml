var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Client_Window":
        {
        exit
        }
    case "Server_Window":
        {
        Packet_Write(packet.kick,data.null,data.all_connected)
        exit
        }
    default:
        {
        exit
        }
    }

