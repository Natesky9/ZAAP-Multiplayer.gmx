if nearest_ship == -1
    {
    //create a ship
    Packet_Write(packet.entity_ship_create,mouse_x,mouse_y)
    keyboard_string = ""
    exit
    }

var is_unpiloted = (ds_map_find_value(nearest_ship,"Controller") == 0)

if is_unpiloted
    {
    var get_entity = ds_map_find_value(nearest_ship,"ssn")
    //console("You are currently Controlling: " + string(Ship_Control))
    Packet_Write(packet.player_request_entity_control,get_entity,Ship_Control)
    //console("Attempting to take control of object: " + string(get_entity))
    keyboard_string = ""
    exit
    }
if !is_unpiloted
    {
    console("This ship is already piloted!")
    var get_controller = ds_map_find_value(nearest_ship,"Controller")
    //console("Ship's Controller: " + string(get_controller))
    exit
    }

