var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        SSS = buffer_read(client_bin,buffer_u8)
        console("You are Player" + string(SSS))
        exit
        }
//--------------------------------//
    case data.client_write:
        {exit}
//================================//
    case data.server_read:
        {exit}
//--------------------------------//
    case data.server_write:
        {
        var get_sss = async_packet[data.arg_1]
        buffer_write(server_bout,buffer_u8,get_sss)
        server_send_packet(get_sss)
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_sss_assign@")
        }
    }
