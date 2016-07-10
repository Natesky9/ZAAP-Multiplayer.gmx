var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_sss = buffer_read(client_bin,buffer_u32)
        var get_x = buffer_read(client_bin,buffer_s32)
        var get_y = buffer_read(client_bin,buffer_s32)
        
        var csn = ds_map_find_value(ssn_map,get_sss)
        
        if is_undefined(csn)
            {
            console("Error, csn is undefined!")
            exit
            }
        var curr_x = ds_map_find_value(csn,"x")
        var curr_y = ds_map_find_value(csn,"y")
        
        if curr_x == get_x
        && curr_y == get_y
            {
            exit
            }
        console("replacing entity")
        ds_map_replace(csn,"x",get_x)
        ds_map_replace(csn,"y",get_y)
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_csn = async_packet[data.arg_1]
        var get_x = async_packet[data.arg_2]
        var get_y = async_packet[data.arg_3]
        
        var ssn = ds_map_find_value(get_csn,"ssn")
        
        buffer_write(client_bout,buffer_u32,ssn)
        buffer_write(client_bout,buffer_s32,get_x)
        buffer_write(client_bout,buffer_s32,get_y)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_sss = buffer_read(server_bin,buffer_u32)
        var get_x = buffer_read(server_bin,buffer_s32)
        var get_y = buffer_read(server_bin,buffer_s32)
        
        if is_undefined(get_sss)
            {
            console("Error, entity [" + string(get_sss) + "] does not exist")
            exit
            }
        //update the entity
        ds_map_replace(get_sss,"x",get_x)
        ds_map_replace(get_sss,"y",get_y)
        
        Packet_Write(packet.entity_ship_position_set,get_sss,get_x,get_y)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_sss = async_packet[data.arg_1]
        var get_x = async_packet[data.arg_2]
        var get_y = async_packet[data.arg_3]
        
        buffer_write(server_bout,buffer_u32,get_sss)
        buffer_write(server_bout,buffer_s32,get_x)
        buffer_write(server_bout,buffer_s32,get_y)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
