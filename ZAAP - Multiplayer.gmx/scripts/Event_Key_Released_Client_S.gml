if Ship_Control != -1
    {
    var get_entity = ds_map_find_value(Ship_Control,"ssn")
    Packet_Write(packet.entity_ship_action,get_entity,action.toggle_brake_off)
    }
