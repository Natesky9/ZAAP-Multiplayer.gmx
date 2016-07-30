var get_entity = argument0
var text

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")
var get_mass = ds_map_find_value(get_entity,"mass")

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
text = "A" + string(get_text)
draw_set_color(c_black)
draw_text(get_x,get_y,text)




if draw_orbit
    {
    var get_apoapsis = ds_map_find_value(get_entity,"apoapsis")
    var get_periapsis = ds_map_find_value(get_entity,"periapsis")
    var get_argument = ds_map_find_value(get_entity,"argument")
    var get_primary = ds_map_find_value(get_entity,"primary")
    
    if !get_primary
    exit
    
    text = "[" + string(get_apoapsis) + "]"
    draw_set_color(c_red)
    draw_text(get_x,get_y+32,text)
    
    text = "[" + string(get_periapsis) + "]"
    draw_set_color(c_blue)
    draw_text(get_x,get_y+48,text)
    
    text = string(get_argument) + "°"
    draw_set_color(c_green)
    draw_text(get_x,get_y+64,text)

    var get_primary_x = ds_map_find_value(get_primary,"x")
    var get_primary_y = ds_map_find_value(get_primary,"y")
    
    var get_e1_x = get_primary_x + lengthdir_x(get_periapsis,get_argument)
    var get_e1_y = get_primary_y + lengthdir_y(get_periapsis,get_argument)
    
    var get_e2_x = get_primary_x + lengthdir_x(get_apoapsis,180+get_argument)
    var get_e2_y = get_primary_y + lengthdir_y(get_apoapsis,180+get_argument)
    
    draw_line(get_e1_x,get_e1_y,get_e2_x,get_e2_y)
    }


draw_set_color(c_gray)
draw_set_circle_precision(32)
var radius = get_mass
draw_circle(get_x,get_y,radius,true)
