var async_packet = argument[0]

show("Packet mode is now " + string(async_packet[data.packet_mode]));
var packet_type = Packet_Prepare(async_packet)
show("Now testing type. Packet_Type is: " + string(packet_type))
switch packet_type
    {
//--------------------------------//
    case packet.chat_send:
        {packet_chat_send(async_packet);exit}
//--------------------------------//
    case packet.entity_asteroid_create:
        {packet_entity_asteroid_create(async_packet);exit}
//--------------------------------//
    case packet.entity_asteroid_destroy:
        {packet_entity_asteroid_destroy(async_packet);exit}
//--------------------------------//
    case packet.entity_asteroid_load:
        {packet_entity_asteroid_load(async_packet);exit}
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
    case packet.sss_remove:
        {packet_sss_remove(async_packet)exit}
//--------------------------------//
    default:
        {
        show("Error, no Packet Type! @Packet@")
        }
//--------------------------------//
    }