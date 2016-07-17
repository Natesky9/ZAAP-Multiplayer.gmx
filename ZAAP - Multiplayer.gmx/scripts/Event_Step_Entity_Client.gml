//request ping
if !((lifetime) mod 30) and (SSS != -1)
    {
    Packet_Write(packet.ping_request)
    }
//end request ping
    
//ship step
for (var i = 0;i < ds_list_size(entity_ship_list);i += 1)
    {
    var get_entity = ds_list_find_value(entity_ship_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Ship(get_entity)
    }
//end ship step
for (var i = 0;i < ds_list_size(entity_vortex_list);i += 1)
    {
    var get_entity = ds_list_find_value(entity_vortex_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Vortex(get_entity)
    }
    
for (var i = 0;i < ds_list_size(entity_asteroid_list);i += 1)
    {//asteroid step
    var get_entity = ds_list_find_value(entity_asteroid_list,i)
    if !is_undefined(get_entity)
    Event_Step_Entity_Asteroid(get_entity)
    }

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

