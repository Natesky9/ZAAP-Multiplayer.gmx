var get_entity = argument0
var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
draw_sprite(sprite0,0,get_x,get_y)

switch ds_stack_top(menu_stack)
    {
    case "Client_Window":
        {
        get_text = ds_map_find_value(get_entity,"ssn")
        break
        }
    case "Server_Window":
        {
        get_text = get_entity
        break
        }
    }
draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
draw_text(get_x,get_y-48,string(get_text))

