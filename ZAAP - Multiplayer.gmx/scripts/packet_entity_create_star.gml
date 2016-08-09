var async_packet = argument[0]
var packet_mode = async_packet[data.packet_mode]

switch packet_mode
    {
//--------------------------------//
    case data.client_read:
        {
        //
        client_read_position()
        var get_entity = client_read_u8()
        //
        var new_entity = Event_Create_Entity(entity.star)
        //
        ds_map_add(new_entity,"ssn",get_entity)
        ds_map_add(ssn_map,get_entity,new_entity)
        //
        exit
        }
//--------------------------------//
    case data.client_write:
        {
        async_position(async_packet)

        //
        client_write_position()

        client_send_packet()
        exit
        }
//================================//
    case data.server_read:
        {
        server_read_position()
        //
        Packet_Write(packet.entity_create_star,get_x,get_y,get_vector_direction,get_vector_speed)
        exit
        }
//--------------------------------//
    case data.server_write:
        {
        //
        async_position(async_packet)

        var get_entity = Event_Create_Entity(entity.star)     
        //
        server_write_position(async_packet)
        server_write_u8(get_entity)
        //
        server_send_packet_all()
        exit
        }
//--------------------------------//
    default:
        {
        show("Error, no case! @packet_asteroid_create@")
        }
    }
