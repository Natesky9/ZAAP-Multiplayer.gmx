

switch type
    {

//----------------------------------------------------------------//
    case packet.chat_send:
        {exit}
//----------------------------------------------------------------//
    case packet.entity_asteroid_create:
        {exit}
//----------------------------------------------------------------//
    case packet.entity_asteroid_destroy:
        {exit}
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
        {exit}
//----------------------------------------------------------------//
    case packet.sss_assign:
        {exit}
//----------------------------------------------------------------//
    case packet.sss_load:
        {exit}
//----------------------------------------------------------------//
    case packet.sss_remove:
        {exit}

//--------------------------------//
    default:
        {
        show("This packet has not been defined yet!")
        }
//--------------------------------//
    }
