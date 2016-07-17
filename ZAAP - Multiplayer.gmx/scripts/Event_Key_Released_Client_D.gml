if Ship_Control != -1
    {
    var get_entity = ds_map_find_value(Ship_Control,"ssn")
    
    if keyboard_check(ord('A'))
    Packet_Write(packet.entity_ship_action,get_entity,action.toggle_steer_left)
    else
    Packet_Write(packet.entity_ship_action,get_entity,action.toggle_steer_straight)
    }
