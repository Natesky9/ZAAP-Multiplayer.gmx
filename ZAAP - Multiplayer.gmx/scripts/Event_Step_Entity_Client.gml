//request ping
if !((lifetime) mod 30) and (SSS != -1)
    {
    Packet_Write(packet.ping_request)
    }
//end request ping

if Ship_Control == -1
    {
    exit
    }
if is_undefined(Ship_Control)
    {
    exit
    }
var get_x = ds_map_find_value(Ship_Control,"x");
var get_y = ds_map_find_value(Ship_Control,"y");
view_xview[0] = get_x - view_wview[0]/2;
view_yview[0] = get_y - view_hview[0]/2;

