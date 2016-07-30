var get_entity = argument0

if is_undefined(get_entity)
    {
    console("Error, entity undefined! @Draw_Ship")
    exit
    }
    var get_x = ds_map_find_value(get_entity,"x")
    var get_y = ds_map_find_value(get_entity,"y")
    var get_direction = ds_map_find_value(get_entity,"direction")
    var throttle = ds_map_find_value(get_entity,"throttle")
    
    var distance_to_mouse = point_distance(get_x,get_y,mouse_x,mouse_y)
    if distance_to_mouse < nearest_ship_distance
        {
        nearest_ship_distance = distance_to_mouse
        nearest_ship = get_entity
        }
    
    draw_sprite_ext(spr_ship,0,get_x,get_y,1,1,get_direction-90,c_white,1)
    var get_controller = ds_map_find_value(get_entity,"Controller")
    if get_controller != 0
    draw_text(get_x,get_y-64,"[" + string(get_controller) + "]")
    
    if throttle
        {
        effect_create_below(ef_flare,get_x,get_y,1,c_white)
        }

