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
            var get_entity = buffer_read(client_bin,buffer_u8)
            var get_x = buffer_read(client_bin,buffer_f32)
            var get_y = buffer_read(client_bin,buffer_f32)
            var new_entity = Event_Create_Entity(entity.ship,get_x,get_y)
            //
            ds_map_add(new_entity,"ssn",get_entity)
            ds_map_add(ssn_map,get_entity,new_entity)
            }
        //
        console("Loaded all previous ships!")
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        //client_send_packet()
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
        var size = ds_list_size(entity_ship_list)
        
        buffer_write(server_bout,buffer_u8,size)
        
        for (i = 0;i < size;i += 1)
            {
            var get_entity = ds_list_find_value(entity_ship_list,i)
            var get_x = ds_map_find_value(get_entity,"x")
            var get_y = ds_map_find_value(get_entity,"y")
            
            buffer_write(server_bout,buffer_u8,get_entity)
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
