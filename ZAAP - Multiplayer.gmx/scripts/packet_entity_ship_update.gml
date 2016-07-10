var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_ssn = buffer_read(client_bin,buffer_u32)
        var get_x = buffer_read(client_bin,buffer_s32)
        var get_y = buffer_read(client_bin,buffer_s32)
        var get_controller = buffer_read(client_bin,buffer_s8)
        var get_direction = buffer_read(client_bin,buffer_f32)
        var get_vector_direction = buffer_read(client_bin,buffer_f32)
        var get_vector_speed = buffer_read(client_bin,buffer_f32)
        //console("received ssn of " + string(get_ssn))
        
        var get_csn = ds_map_find_value(ssn_map,get_ssn)
        
        if is_undefined(get_csn)
            {//OOO error
            console("Error, entity [" + string(get_csn) + "] does not exist!")
            exit
            }
        //update the position of this entity
        ds_map_replace(get_csn,"x",get_x)
        ds_map_replace(get_csn,"y",get_y)
        ds_map_replace(get_csn,"Controller",get_controller)
        ds_map_replace(get_csn,"direction",get_direction)
        ds_map_replace(get_csn,"vector_direction",get_vector_direction)
        ds_map_replace(get_csn,"vector_speed",get_vector_speed)
        
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_csn = async_packet[data.arg_1]
        var get_ssn = ds_map_find_value(get_csn,"ssn")
        buffer_write(client_bout,buffer_u32,get_ssn)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        //replace this with server_write at the same time to fill with 1 arg
        var get_entity = buffer_read(server_bin,buffer_u32)
        
        Packet_Write(packet.entity_ship_update,get_entity)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //possibly replace this with 1 argument, and fill in this script
        var get_entity = async_packet[data.arg_1]
        var get_x = ds_map_find_value(get_entity,"x")
        var get_y = ds_map_find_value(get_entity,"y")
        var get_controller = ds_map_find_value(get_entity,"Controller")
        var get_direction = ds_map_find_value(get_entity,"direction")
        var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
        var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")
        //console("Sending entity to be read by client " + string(get_entity))
        
        buffer_write(server_bout,buffer_u32,get_entity)
        buffer_write(server_bout,buffer_s32,get_x)
        buffer_write(server_bout,buffer_s32,get_y)
        buffer_write(server_bout,buffer_u8,get_controller)
        buffer_write(server_bout,buffer_f32,get_direction)
        buffer_write(server_bout,buffer_f32,get_vector_direction)
        buffer_write(server_bout,buffer_f32,get_vector_speed)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
