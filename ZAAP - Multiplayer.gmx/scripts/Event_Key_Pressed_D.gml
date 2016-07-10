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
    if is_undefined(Ship_Control)
        {
        console("ERROR, Ship not defined!")
        exit
        }
    
    var get_ssn = ds_map_find_value(Ship_Control,"ssn")
    Packet_Write(packet.entity_ship_action,get_ssn,action.toggle_steer_right)
    }
