var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_ssn = buffer_read(client_bin,buffer_u32)
        var get_controller = buffer_read(client_bin,buffer_s32)
        var get_csn = ds_map_find_value(ssn_map,get_ssn)
        
        if is_undefined(get_csn)
            {//OOO error
            exit
            }
        
        if get_controller == SSS
            {//if you are the controller
            Ship_Control = get_csn
            }

        ds_map_replace(get_csn,"Controller",get_controller)
        //console("Ship: " + string(get_ssn) + " is now controlled by: " + string(get_controller))
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
        var get_entity = async_packet[data.arg_1]
        var get_controller = async_packet[data.arg_2]
        
        ds_map_replace(get_entity,"Controller",get_controller)
        if get_controller == 0
            {
            ds_map_delete(entity_ship_controllers,get_controller)
            }
        if get_controller != 0
            {
            ds_map_add(entity_ship_controllers,get_controller,get_entity)
            }
        
        buffer_write(server_bout,buffer_u32,get_entity)
        buffer_write(server_bout,buffer_s32,get_controller)
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
