if Ship_Control == -1
    {
    console("You don't have a ship controlled!")
    console("Press 'Q' to spawn/control a ship")
    exit
    }

if Ship_Control != -1
    {
    if is_undefined(Ship_Control)
        {
        console("ERROR, Ship not defined!")
        exit
        }
    var get_ssn = Get_SSN(Ship_Control)
    //console("Braking")
    Packet_Write(packet.entity_ship_action,get_ssn,action.toggle_brake_on)
    }
