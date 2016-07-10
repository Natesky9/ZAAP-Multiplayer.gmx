var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var size = buffer_read(client_bin,buffer_u8)
        //
        for (i = 0;i < size;i += 1)
            {
            var get_ssn = buffer_read(client_bin,buffer_u8)
            var get_x = buffer_read(client_bin,buffer_f32)
            var get_y = buffer_read(client_bin,buffer_f32)
            var new_entity = entity_create(entity.asteroid,get_x,get_y)
            //
            ds_map_add(new_entity,"ssn",get_ssn)
            //console("Added object: " + string(new_entity))
            //console("Added ssn: " + string(get_ssn))
            //console("Assigning object to ssn")
            ds_map_add(ssn_map,get_ssn,new_entity)
            }
        //
        console("Loadded all previous asteroids!")
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
        var get_sss = async_packet[data.arg_1]
        var size = ds_list_size(entity_asteroid_list)
        
        buffer_write(server_bout,buffer_u8,size)
        
        for (i = 0;i < size;i += 1)
            {
            var find_ssn = ds_list_find_value(entity_asteroid_list,i)
            var get_x = ds_map_find_value(find_ssn,"x")
            var get_y = ds_map_find_value(find_ssn,"y")
            
            buffer_write(server_bout,buffer_u8,find_ssn)
            buffer_write(server_bout,buffer_f32,get_x)
            buffer_write(server_bout,buffer_f32,get_y)
            //add load functions here
            }
        server_send_packet(get_sss)
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
