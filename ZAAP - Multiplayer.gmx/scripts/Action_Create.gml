var get_x = argument0
var get_y = argument1
var get_vector_direction = argument2
var get_vector_speed = argument3

switch Action_Selection
    {
    //
    case entity.null:
        {
        //nothing here yet
        console("entity.null")
        exit
        }
    //
    case entity.projectile:
        {
        Packet_Write(packet.entity_create_projectile,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    //
    case entity.object:
        {
        Packet_Write(packet.entity_create_object,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    case entity.asteroid:
        {
        Packet_Write(packet.entity_create_asteroid,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit;
        }
    case entity.ship:
        {
        Packet_Write(packet.entity_create_ship,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    case entity.station:
        {
        Packet_Write(packet.entity_create_station,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    case entity.star:
        {
        Packet_Write(packet.entity_create_star,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed)
        exit
        }
    case entity.vortex:
        {
        Packet_Write(packet.entity_create_vortex,data.position,
            mouse_x,mouse_y,get_vector_direction,get_vector_speed,)
        exit
        }
    default:
        {
        console("Error, no entity defined! @Action_Create")
        }
    }
