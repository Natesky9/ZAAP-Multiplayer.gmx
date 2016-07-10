if Ship_Control != -1
    {
    var get_ssn = ds_map_find_value(Ship_Control,"ssn")
    Packet_Write(packet.entity_ship_action,get_ssn,action.toggle_brake_off)
    }
