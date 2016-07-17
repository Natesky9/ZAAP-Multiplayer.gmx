var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]
switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        var get_entity = buffer_read(client_bin,buffer_u32)
        var get_action = buffer_read(client_bin,buffer_u8)
        
        var get_entity = ds_map_find_value(ssn_map,get_entity)
        
        if is_undefined(get_entity)
            {
            console("Error, received an entity that doesn't exist")
            exit
            }
        
        switch get_action
            {
            //----------------//
            case action.jump_drive:
                {
                var new_x = buffer_read(client_bin,buffer_f32)
                var new_y = buffer_read(client_bin,buffer_f32)
                
                var old_x = ds_map_find_value(get_entity,"x")
                var old_y = ds_map_find_value(get_entity,"y")
                
                create_sketch(sketch.warp_trail,old_x,old_y,new_x,new_y)
                
                ds_map_replace(get_entity,"x",new_x)
                ds_map_replace(get_entity,"y",new_y)
                //add warp effects here
                }
            //----------------//
            case action.toggle_brake_off:
                {
                ds_map_replace(get_entity,"brake",0)
                break
                }
            //----------------//
            case action.toggle_brake_on:
                {
                //console("brake2")
                ds_map_replace(get_entity,"brake",1)
                break
                }
            //----------------//
            case action.toggle_throttle_off:
                {
                ds_map_replace(get_entity,"throttle",0)
                break
                }
            //----------------//
            case action.toggle_throttle_on:
                {
                ds_map_replace(get_entity,"throttle",1)
                break
                }
            //----------------//
            case action.toggle_steer_left:
                {
                ds_map_replace(get_entity,"steer",-1)
                break
                }
            //----------------//
            case action.toggle_steer_straight:
                {
                ds_map_replace(get_entity,"steer",0)
                break
                }
            //----------------//
            case action.toggle_steer_right:
                {
                ds_map_replace(get_entity,"steer",1)
                break
                }
            //----------------//
            default:
                {
                console("Error, no action defined! @packet_entity_ship_action")
                }
            }
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        var get_entity = async_packet[data.arg_1]
        var get_action = async_packet[data.arg_2]
        buffer_write(client_bout,buffer_u32,get_entity)
        buffer_write(client_bout,buffer_u8,get_action)
        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        var get_entity = buffer_read(server_bin,buffer_u32)
        var get_action = buffer_read(server_bin,buffer_u8)
        Packet_Write(packet.entity_ship_action,get_entity,get_action)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        var get_entity = async_packet[data.arg_1]
        var get_action = async_packet[data.arg_2]
        
        if is_undefined(get_entity)
        or is_undefined(get_action)
            {
            console("Error @packet_entity_ship_action")
            }
            
        buffer_write(server_bout,buffer_u32,get_entity)
        buffer_write(server_bout,buffer_u8,get_action)
        
        switch get_action
            {
            //----------------//
            case action.jump_drive:
                {
                var get_x = ds_map_find_value(get_entity,"x")
                var get_y = ds_map_find_value(get_entity,"y")
                var get_direction = ds_map_find_value(get_entity,"direction")
                
                var warp_distance = 128
                
                var new_x = get_x + lengthdir_x(warp_distance,get_direction)
                var new_y = get_y + lengthdir_y(warp_distance,get_direction)
                
                ds_map_replace(get_entity,"x",new_x)
                ds_map_replace(get_entity,"y",new_y)
                
                buffer_write(server_bout,buffer_f32,new_x)
                buffer_write(server_bout,buffer_f32,new_y)
                break
                }
            //----------------//
            case action.toggle_brake_off:
                {
                ds_map_replace(get_entity,"brake",0)
                break
                }
            //----------------//
            case action.toggle_brake_on:
                {
                ds_map_replace(get_entity,"brake",1)
                break
                }
            //----------------//
            case action.toggle_throttle_off:
                {
                ds_map_replace(get_entity,"throttle",0)
                break
                }
            //----------------//
            case action.toggle_throttle_on:
                {
                ds_map_replace(get_entity,"throttle",1)
                break
                }
            //----------------//
            case action.toggle_steer_left:
                {
                ds_map_replace(get_entity,"steer",-1)
                break
                }
            //----------------//
            case action.toggle_steer_straight:
                {
                ds_map_replace(get_entity,"steer",0)
                break
                }
            //----------------//
            case action.toggle_steer_right:
                {
                ds_map_replace(get_entity,"steer",1)
                break
                }
            //----------------//
            default:
                {
                console("Error, no action defined! @packet_entity_ship_action")
                }
            }
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_@")
        }
    }
