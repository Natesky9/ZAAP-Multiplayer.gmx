if Ship_Control != -1
    {
    var get_ssn = ds_map_find_value(Ship_Control,"ssn")
    
    if keyboard_check(ord('A'))
    Packet_Write(packet.entity_ship_action,get_ssn,action.toggle_steer_left)
    else
    Packet_Write(packet.entity_ship_action,get_ssn,action.toggle_steer_straight)
    }