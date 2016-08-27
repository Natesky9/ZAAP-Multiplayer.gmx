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


nearest = find_nearest(get_list,mouse_x,mouse_y,false,false)
if is_undefined(nearest)
exit

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
        Packet_Write(packet.entity_destroy_projectile,data.null,nearest);break}
    case entity.object:
        {Event_Destroy_Object(nearest);
        Packet_Write(packet.entity_destroy_object,data.null,nearest);break}
    case entity.asteroid:
        {Event_Destroy_Asteroid(nearest);
        Packet_Write(packet.entity_destroy_asteroid,data.null,nearest);break}
    case entity.ship:
        {Event_Destroy_Ship(nearest);
        Packet_Write(packet.entity_destroy_ship,data.null,nearest);break}
    case entity.station:
        {Event_Destroy_Station(nearest);
        Packet_Write(packet.entity_destroy_station,data.null,nearest);break}
    case entity.star:
        {Event_Destroy_Star(nearest);
        Packet_Write(packet.entity_destroy_star,data.null,nearest);break}
    case entity.vortex:
        {Event_Destroy_Vortex(nearest);
        Packet_Write(packet.entity_destroy_vortex,data.null,nearest);break}
    default:
        {
        console("Error, no type assigned! @Event_Left_Released")
        exit
        }
    }

