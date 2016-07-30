if field_focus == -2

if Ship_Control == -1
    {
    console("You don't have a ship controlled!")
    console("Press 'Q' to spawn/control a ship")
    exit
    }

if Ship_Control != -1
    {
    var get_entity = Get_SSN(Ship_Control)
    if get_entity
    Packet_Write(packet.entity_ship_action,get_entity,ship_action.toggle_brake_on)
    }
