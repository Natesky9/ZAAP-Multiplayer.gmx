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
        var get_direction = client_read_f32()
        var get_entity = buffer_read(client_bin,buffer_u8)
        var new_entity = Event_Create_Entity(entity.ship,get_x,get_y)
        //
        ds_map_replace(new_entity,"direction",get_direction)
        ds_map_add(new_entity,"ssn",get_entity)
        ds_map_add(ssn_map,get_entity,new_entity)
        //
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_x = async_packet[data.arg_1]
        var get_y = async_packet[data.arg_2]
        var get_direction = async_packet[data.arg_3]
        buffer_write(client_bout,buffer_f32,get_x)
        buffer_write(client_bout,buffer_f32,get_y)
        client_write_f32(get_direction)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_x = buffer_read(server_bin,buffer_f32)
        var get_y = buffer_read(server_bin,buffer_f32)
        var get_direction = server_read_f32()
        Packet_Write(packet.entity_ship_create,get_x,get_y,get_direction)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //
        var get_x = async_packet[data.arg_1]
        var get_y = async_packet[data.arg_2]
        var get_direction = async_packet[data.arg_3]
        var get_entity = Event_Create_Entity(entity.ship,get_x,get_y)
        //
        ds_map_replace(get_entity,"direction",get_direction)
        //replace all buffer_write with server_write_<format>
        buffer_write(server_bout,buffer_f32,get_x)
        buffer_write(server_bout,buffer_f32,get_y)
        server_write_f32(get_direction)
        buffer_write(server_bout,buffer_u8,get_entity)
        //
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_ship_create@")
        }
    }
