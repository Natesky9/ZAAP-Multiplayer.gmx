var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]

switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        //
        var get_x = buffer_read(client_bin,buffer_f32)
        var get_y = buffer_read(client_bin,buffer_f32)
        var get_ssn = buffer_read(client_bin,buffer_u8)
        var new_entity = entity_create(entity.asteroid,get_x,get_y)
        //
        ds_map_add(new_entity,"ssn",get_ssn)
        ds_map_add(ssn_map,get_ssn,new_entity)
        //
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_x = async_packet[data.arg_1]
        var get_y = async_packet[data.arg_2]
        buffer_write(client_bout,buffer_f32,get_x)
        buffer_write(client_bout,buffer_f32,get_y)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_x = buffer_read(server_bin,buffer_f32)
        var get_y = buffer_read(server_bin,buffer_f32)
        Packet_Write(packet.entity_asteroid_create,get_x,get_y)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //
        var get_x = async_packet[data.arg_1]
        var get_y = async_packet[data.arg_2]
        var get_ssn = entity_create(entity.asteroid,get_x,get_y)
        //
        buffer_write(server_bout,buffer_f32,get_x)
        buffer_write(server_bout,buffer_f32,get_y)
        buffer_write(server_bout,buffer_u8,get_ssn)
        //
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_asteroid_create@")
        }
    }
