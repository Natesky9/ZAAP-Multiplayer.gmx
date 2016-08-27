var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_entity = async_packet[data.arg_1]
        buffer_write(client_bout,buffer_u32,get_entity)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        //console("Received entity control request")
        var get_entity = buffer_read(server_bin,buffer_u32)
        var get_sss = async_packet[data.packet_sss]
        
        var is_piloted = (ds_map_find_value(get_entity,"Controller") != 0)
        
        if !is_piloted
            {
            var get_current_controlled_entity = ds_map_find_value(entity_ship_controllers,get_sss)
            if !is_undefined(get_current_controlled_entity)
                {//reset the previous ship's control to 0
                Packet_Write(packet.entity_ship_set_control,data.null,get_current_controlled_entity,0)
                //console("Resetting object: " + string(get_current_controlled_entity) + " to 0")
                ds_map_replace(entity_ship_controllers,get_sss,get_entity)
                }
            if is_undefined(get_current_controlled_entity)
                {
                ds_map_add(entity_ship_controllers,get_sss,get_entity)
                }
            Packet_Write(packet.entity_ship_set_control,data.null,get_entity,get_sss)
            
            }
        if is_piloted
            {
            console("ERROR, this ship is already piloted!")
            }
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
