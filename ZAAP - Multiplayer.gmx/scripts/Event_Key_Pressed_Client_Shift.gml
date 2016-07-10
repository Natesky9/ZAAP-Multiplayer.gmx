if Ship_Control == -1
    {
    console("No warp drive, because no ship!")
    exit
    }

if is_undefined(Ship_Control)
    {
    console("ERROR, Ship no defined!")
    exit
    }

var get_ssn = Get_SSN(Ship_Control)
Packet_Write(packet.entity_ship_action,get_ssn,action.jump_drive)
