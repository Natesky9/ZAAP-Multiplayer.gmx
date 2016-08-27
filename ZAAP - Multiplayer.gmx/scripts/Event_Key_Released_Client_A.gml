if Ship_Control != -1
    {
    var get_entity = ds_map_find_value(Ship_Control,"ssn")
    
    if keyboard_check(ord('D'))
    Packet_Write(packet.entity_ship_action,data.null,get_entity,ship_action.toggle_steer_right)
    else
    Packet_Write(packet.entity_ship_action,data.null,get_entity,ship_action.toggle_steer_straight)
    }
