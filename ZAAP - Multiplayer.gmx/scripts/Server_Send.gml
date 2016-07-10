//send a packet from the server to a client/s
//syntax is
//type
//packet-specific arguments


/*

switch type
    {

//----------------------------------------------------------------//
    case packet.chat_send:
        {exit}
//----------------------------------------------------------------//
    case packet.entity_asteroid_create:
        {packet_entity_asteroid_create("O",argument[1],argument[2],argument[3],argument[4]);exit;}
//----------------------------------------------------------------//
    case packet.entity_asteroid_destroy:
        {packet_entity_asteroid_destroy("O",argument[1]);exit;}
//----------------------------------------------------------------//
    case packet.entity_asteroid_load:
        {exit}
//----------------------------------------------------------------//
    case packet.force_kick:
        {exit}
//----------------------------------------------------------------//
    case packet.player_request_entity_control:
        {exit}
//----------------------------------------------------------------//
    case packet.player_set_entity_control:
        {exit}

    case packet.sss_add:
        {packet_sss_add("O",argument[1]);exit;}
//----------------------------------------------------------------//
    case packet.sss_assign:
        {exit}
//----------------------------------------------------------------//
    case packet.sss_load:
        {exit}
//----------------------------------------------------------------//
    case packet.sss_remove:
        {packet_sss_remove("O",argument[1]);exit;}
//----------------------------------------------------------------//

    default:
        {
        show("Error type of " + string(type))
        show("This packet hasn't been defined yet! #Server_Send")
        }
//----------------------------------------------------------------//
    }
*/
