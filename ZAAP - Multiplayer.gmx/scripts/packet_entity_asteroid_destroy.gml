var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]

switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_entity = buffer_read(client_bin,buffer_u32)
        var csn = ds_map_find_value(ssn_map,get_entity)
        entity_destroy_asteroid(csn)
        
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_entity = async_packet[data.arg_1]
        buffer_write(client_bout,buffer_u8,get_entity)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_entity = buffer_read(server_bin,buffer_u8)
        entity_destroy_asteroid(get_entity)
        Packet_Write(packet.entity_asteroid_destroy,get_entity)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_entity = async_packet[data.arg_1]
        buffer_write(server_bout,buffer_u32,get_entity)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_asteroid_create@")
        }
    }
