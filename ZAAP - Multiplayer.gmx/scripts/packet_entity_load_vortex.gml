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
            get_x = buffer_read(client_bin,buffer_f32)
            get_y = buffer_read(client_bin,buffer_f32)
            get_vector_direction = buffer_read(client_bin,buffer_f32)
            get_vector_speed = buffer_read(client_bin,buffer_f32)
            //
            var new_entity = Event_Create_Entity(entity.vortex)
            //
            ds_map_replace(new_entity,"vector_direction",get_vector_direction)
            ds_map_replace(new_entity,"vector_speed",get_vector_speed)
            //
            ds_map_add(new_entity,"ssn",get_entity)
            ds_map_add(ssn_map,get_entity,new_entity)
            }
        //
        console("Loadded all previous vortexs!")
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
        var size = ds_list_size(entity_vortex_list)
        
        buffer_write(server_bout,buffer_u8,size)
        
        for (i = 0;i < size;i += 1)
            {
            var get_entity = ds_list_find_value(entity_vortex_list,i)
            get_x = ds_map_find_value(get_entity,"x")
            get_y = ds_map_find_value(get_entity,"y")
            get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
            get_vector_speed = ds_map_find_value(get_entity,"vector_speed")
            
            buffer_write(server_bout,buffer_u8,get_entity)
            buffer_write(server_bout,buffer_f32,get_x)
            buffer_write(server_bout,buffer_f32,get_y)
            buffer_write(server_bout,buffer_f32,get_vector_direction)
            buffer_write(server_bout,buffer_f32,get_vector_speed)
            //add load functions here
            }
        server_send_packet(get_sss)
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_entity_vortex_load@")
        }
    }
