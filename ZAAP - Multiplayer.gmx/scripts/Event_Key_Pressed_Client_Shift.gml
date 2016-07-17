if field_focus == -1
or field_focus == -2
    {
    exit
    }

if Ship_Control == -1
    {
    console("No warp drive, because no ship!")
    exit
    }

if Ship_Control != 1
    {
    var get_entity = Get_SSN(Ship_Control)
    if get_entity
    Packet_Write(packet.entity_ship_action,get_entity,action.jump_drive)
    }
