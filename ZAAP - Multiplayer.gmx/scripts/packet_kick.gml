var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        Client_Disconnect()
        
        console("You have been kicked!")
        console("How does that feel?")
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        exit
        }
//================================//
    case data.server_read:
        {
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_sss = async_packet[data.arg_1]
        if get_sss == data.all_connected
            {
            show("Kicking all players")
            server_send_packet_all()
            exit
            }
        else
            {
            show("Kicking socket" + string(get_sss))
            server_send_packet(get_sss)
            exit
            }
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
