var get_list
switch Action_Selection
    {
    //
    case entity.null:
        {console("select a type to delete");exit}
    case entity.projectile:
        {get_list = entity_projectile_list;break}
    case entity.object:
        {get_list = entity_object_list;break}
    case entity.asteroid:
        {get_list = entity_asteroid_list;break}
    case entity.ship:
        {get_list = entity_ship_list;break}
    case entity.station:
        {get_list = entity_station_list;break}
    case entity.star:
        {get_list = entity_star_list;break}
    case entity.vortex:
        {get_list = entity_vortex_list;break}
    default:
        {console("Error, no type assigned! @Event_Left_Released");exit}
    //
    }


if ds_list_size(get_list) == 0
exit

var nearest = ds_list_find_value(get_list,0)
var get_x = ds_map_find_value(nearest,"x")
var get_y = ds_map_find_value(nearest,"y")
var nearest_distance = point_distance(mouse_x,mouse_y,get_x,get_y)
for (var i = 0; i < ds_list_size(get_list);i += 1)
    {
    var get_entity = ds_list_find_value(get_list,i)
    var get_entity_x = ds_map_find_value(get_entity,"x")
    var get_entity_y = ds_map_find_value(get_entity,"y")
    var get_distance = point_distance(mouse_x,mouse_y,get_entity_x,get_entity_y)
    
    if get_distance < nearest_distance
        {
        nearest = get_entity
        nearest_distance = get_distance
        }
    }

switch Action_Selection
    {
    case entity.null:
        {
        //loop through all?
        console("Error?")
        exit
        }
    case entity.projectile:
        {Event_Destroy_Projectile(nearest);
        Packet_Write(packet.entity_destroy_projectile,nearest);break}
    case entity.object:
        {Event_Destroy_Object(nearest);
        Packet_Write(packet.entity_destroy_object,nearest);break}
    case entity.asteroid:
        {Event_Destroy_Asteroid(nearest);
        Packet_Write(packet.entity_destroy_asteroid,nearest);break}
    case entity.ship:
        {Event_Destroy_Ship(nearest);
        Packet_Write(packet.entity_destroy_ship,nearest);break}
    case entity.station:
        {Event_Destroy_Station(nearest);
        Packet_Write(packet.entity_destroy_station,nearest);break}
    case entity.star:
        {Event_Destroy_Star(nearest);
        Packet_Write(packet.entity_destroy_star,nearest);break}
    case entity.vortex:
        {Event_Destroy_Vortex(nearest);
        Packet_Write(packet.entity_destroy_vortex,nearest);break}
    default:
        {
        console("Error, no type assigned! @Event_Left_Released")
        exit
        }
    }

