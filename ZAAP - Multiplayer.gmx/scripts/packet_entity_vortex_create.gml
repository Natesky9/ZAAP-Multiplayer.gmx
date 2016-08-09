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
        var get_vector_direction = buffer_read(client_bin,buffer_f32)
        var get_vector_speed = buffer_read(client_bin,buffer_f32)
        var get_entity = buffer_read(client_bin,buffer_u8)
        var new_entity = Event_Create_Entity(entity.vortex,get_x,get_y)
        //
        ds_map_replace(new_entity,"vector_direction",get_vector_direction)
        ds_map_replace(new_entity,"vector_speed",get_vector_speed)
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
        var get_vector_direction = async_packet[data.arg_3]
        var get_vector_speed = async_packet[data.arg_4]
        buffer_write(client_bout,buffer_f32,get_x)
        buffer_write(client_bout,buffer_f32,get_y)
        buffer_write(client_bout,buffer_f32,get_vector_direction)
        buffer_write(client_bout,buffer_f32,get_vector_speed)
        
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_x = buffer_read(server_bin,buffer_f32)
        var get_y = buffer_read(server_bin,buffer_f32)
        var get_vector_direction = buffer_read(server_bin,buffer_f32)
        var get_vector_speed = buffer_read(server_bin,buffer_f32)
        Packet_Write(packet.entity_vortex_create,get_x,get_y,get_vector_direction,get_vector_speed)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        console("Creating Vortex")
        //
        var get_x = async_packet[data.arg_1]
        var get_y = async_packet[data.arg_2]
        var get_vector_direction = async_packet[data.arg_3]
        var get_vector_speed = async_packet[data.arg_4]
        var get_entity = Event_Create_Entity(entity.vortex,get_x,get_y)
        //
        ds_map_replace(get_entity,"vector_direction",get_vector_direction)
        ds_map_replace(get_entity,"vector_speed",get_vector_speed)
        buffer_write(server_bout,buffer_f32,get_x)
        buffer_write(server_bout,buffer_f32,get_y)
        buffer_write(server_bout,buffer_f32,get_vector_direction)
        buffer_write(server_bout,buffer_f32,get_vector_speed)
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
