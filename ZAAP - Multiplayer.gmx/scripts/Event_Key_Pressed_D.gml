if field_focus == -2
    {
    exit
    }
    
if Ship_Control == -1
    {
    console("You don't have a ship controlled!")
    exit
    }

if Ship_Control != -1
    {
    var get_entity = Get_SSN(Ship_Control)
    if get_entity
    Packet_Write(packet.entity_ship_action,get_entity,action.toggle_steer_right)
    }
