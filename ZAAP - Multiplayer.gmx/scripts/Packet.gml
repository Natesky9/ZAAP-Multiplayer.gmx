var async_packet = argument0

show("Packet mode is now " + string(async_packet[data.packet_mode]));
var packet_type = Packet_Prepare(async_packet)
show("Now testing type. Packet_Type is: " + string(packet_type))
switch packet_type
    {
//--------------------------------//
    case packet.chat_send:
        {packet_chat_send(async_packet);exit}
//--------------------------------//
//entity create packets
//--------------------------------//
    case packet.entity_create_projectile:
        {packet_entity_create_projectile(async_packet);exit}
//--------------------------------//
    case packet.entity_create_object:
        {packet_entity_create_object(async_packet);exit}
//--------------------------------//
    case packet.entity_create_asteroid:
        {packet_entity_create_asteroid(async_packet);exit}
//--------------------------------//
    case packet.entity_create_ship:
        {packet_entity_create_ship(async_packet);exit}
//--------------------------------//
    case packet.entity_create_station:
        {packet_entity_create_station(async_packet);exit}
//--------------------------------//
    case packet.entity_create_star:
        {packet_entity_create_star(async_packet);exit}
//--------------------------------//
    case packet.entity_create_vortex:
        {packet_entity_create_vortex(async_packet);exit}
//--------------------------------//
//entity destroy packets
//--------------------------------//
    case packet.entity_destroy_projectile:
        {packet_entity_destroy_projectile(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_object:
        {packet_entity_destroy_object(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_asteroid:
        {packet_entity_destroy_asteroid(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_ship:
        {packet_entity_destroy_ship(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_station:
        {packet_entity_destroy_station(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_star:
        {packet_entity_destroy_star(async_packet);exit}
//--------------------------------//
    case packet.entity_destroy_vortex:
        {packet_entity_destroy_vortex(async_packet);exit}
//--------------------------------//
//entity load packets
//--------------------------------//
    case packet.entity_load_projectile:
        {packet_entity_load_projectile(async_packet);exit}
//--------------------------------//
    case packet.entity_load_object:
        {packet_entity_load_object(async_packet);exit}
//--------------------------------//
    case packet.entity_load_asteroid:
        {packet_entity_load_asteroid(async_packet);exit}
//--------------------------------//
    case packet.entity_load_ship:
        {packet_entity_load_ship(async_packet);exit}
//--------------------------------//
    case packet.entity_load_station:
        {packet_entity_load_station(async_packet);exit}
//--------------------------------//
    case packet.entity_load_star:
        {packet_entity_load_star(async_packet);exit}
//--------------------------------//
    case packet.entity_load_vortex:
        {packet_entity_load_vortex(async_packet);exit}
//--------------------------------//
//misc packets
//--------------------------------//
    case packet.entity_update_projectile:
        {packet_entity_update_projectile(async_packet);exit}
//--------------------------------//
    case packet.entity_update_object:
        {packet_entity_update_object(async_packet);exit}
//--------------------------------//
    case packet.entity_update_asteroid:
        {packet_entity_update_asteroid(async_packet);exit}
//--------------------------------//
    case packet.entity_update_ship:
        {packet_entity_update_ship(async_packet);exit}
//--------------------------------//
    case packet.entity_update_station:
        {packet_entity_update_station(async_packet);exit}
//--------------------------------//
    case packet.entity_update_star:
        {packet_entity_update_star(async_packet);exit}
//--------------------------------//
    case packet.entity_update_vortex:
        {packet_entity_update_vortex(async_packet);exit}
//--------------------------------//
//--------------------------------//
    case packet.entity_ship_action:
        {packet_entity_ship_action(async_packet);exit}
//--------------------------------//
    case packet.entity_ship_set_control:
        {packet_entity_ship_set_control(async_packet);exit}
//--------------------------------//
    case packet.kick:
        {packet_kick(async_packet);exit}
//--------------------------------//
    case packet.ping_request:
        {packet_ping_request(async_packet);exit}
//--------------------------------//
    case packet.ping_tell:
        {packet_ping_tell(async_packet);exit}
//--------------------------------//
    case packet.sss_add:
        {packet_sss_add(async_packet);exit}
//--------------------------------//
    case packet.sss_assign:
        {packet_sss_assign(async_packet);exit}
//--------------------------------//
    case packet.sss_load:
        {packet_sss_load(async_packet);exit}
//--------------------------------//
    case packet.player_request_entity_control:
        {packet_player_request_entity_control(async_packet);exit}
//--------------------------------//
    case packet.sss_remove:
        {packet_sss_remove(async_packet)exit}
//--------------------------------//
    default:
        {
        show("Error, no Packet Type! @Packet@")
        }
//--------------------------------//
    }
