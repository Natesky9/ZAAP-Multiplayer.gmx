var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_sss = buffer_read(client_bin,buffer_u8)
        var get_ping = buffer_read(client_bin,buffer_u8)
        
        var player_map = ds_map_find_value(sss_map,get_sss)
        if !is_undefined(player_map)
            {
            ds_map_replace(player_map,"Ping",get_ping)
            }
        else
            {
            console("Error, Ping_Tell gave an undefined value!")
            }
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        buffer_write(client_bout,buffer_u8,Ping)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_sss = async_packet[data.packet_sss]
        var get_ping = buffer_read(server_bin,buffer_u8)
        var get_map = ds_map_find_value(sss_map,get_sss)
        ds_map_replace(get_map,"Ping",get_ping)
        Packet_Write(packet.ping_tell,data.null,get_sss,get_ping)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //send all packet's ping
        var get_sss = async_packet[data.arg_1]
        var get_ping = async_packet[data.arg_2]
        buffer_write(server_bout,buffer_u8,get_sss)
        buffer_write(server_bout,buffer_u8,get_ping)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_asteroid_create@")
        }
    }
