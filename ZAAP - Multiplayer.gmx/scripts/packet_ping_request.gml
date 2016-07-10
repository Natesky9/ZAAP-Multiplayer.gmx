var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]

switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_ping = buffer_read(client_bin,buffer_u32)
        var Ping_Previous = Ping
        Ping = (current_time - get_ping)
        
        //if Ping != Ping_Previous
        //    {
            Packet_Write(packet.ping_tell,Ping)
        //    }
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        buffer_write(client_bout,buffer_u32,current_time)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_sss = async_packet[data.packet_sss]
        var get_ping = buffer_read(server_bin,buffer_u32)
        Packet_Write(packet.ping_request,get_sss,get_ping)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //change this to only send to the one client
        var get_sss = async_packet[data.arg_1]
        var get_ping = async_packet[data.arg_2]
        buffer_write(server_bout,buffer_u32,get_ping)
        server_send_packet(get_sss)
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_asteroid_create@")
        }
    }
