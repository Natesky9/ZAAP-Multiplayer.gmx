var get_entity = argument[0]

//add values here
var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_direction = ds_map_find_value(get_entity,"direction")
var get_controller = ds_map_find_value(get_entity,"Controller")
var get_vector_direction = ds_map_find_value(get_entity,"vector_direction")
var get_vector_speed = ds_map_find_value(get_entity,"vector_speed")

Packet_Write(packet.entity_update_ship,
    get_entity,get_x,get_y,get_direction,get_controller,
    get_vector_direction,get_vector_speed)
