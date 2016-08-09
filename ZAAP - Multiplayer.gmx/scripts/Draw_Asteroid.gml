var get_entity = argument0
var text

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")
//----------------//



if view_size < 5000000 and view_size >= 5000
    {
    draw_set_color(c_orange)
    draw_circle(get_x,get_y,view_size/100,false)
    }

if view_size < 5000
    {
    draw_sprite(sprite0,0,get_x,get_y)
    }

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
text = "A" + string(get_text)
draw_set_color(c_black)
draw_text(get_x,get_y,text)




if draw_orbit
    {
    Draw_Orbit(get_entity)    
    }


draw_set_color(c_gray)
draw_set_circle_precision(32)
var radius = get_mass
draw_circle(get_x,get_y,radius,true)
