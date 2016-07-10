var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var new_sss = buffer_read(client_bin,buffer_u8)
        sss_connect(new_sss)
        console("Attempting to connect [" + string(new_sss) + "]")
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
        var new_sss = async_packet[data.arg_1]
        buffer_write(server_bout,buffer_u8,new_sss)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
