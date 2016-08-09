var get_entity = argument0

var get_x = ds_map_find_value(get_entity,"x")
var get_y = ds_map_find_value(get_entity,"y")

var get_apoapsis = ds_map_find_value(get_entity,"apoapsis")
var get_periapsis = ds_map_find_value(get_entity,"periapsis")
var get_argument = ds_map_find_value(get_entity,"argument")
var get_primary = ds_map_find_value(get_entity,"primary")

if !get_primary
exit

//draw the orbit info
text = "[" + string(get_apoapsis) + "]"
draw_set_color(c_red)
draw_text(get_x,get_y+32,text)

text = "[" + string(get_periapsis) + "]"
draw_set_color(c_blue)
draw_text(get_x,get_y+48,text)

text = string(get_argument) + "°"
draw_set_color(c_green)
draw_text(get_x,get_y+64,text)
//end drawing orbit info

var get_primary_x = ds_map_find_value(get_primary,"x")
var get_primary_y = ds_map_find_value(get_primary,"y")

//elipse x1 and x2
var get_e1_x = get_primary_x + lengthdir_x(get_periapsis,get_argument)
var get_e1_y = get_primary_y + lengthdir_y(get_periapsis,get_argument)

var get_e2_x = get_primary_x + lengthdir_x(get_apoapsis,180+get_argument)
var get_e2_y = get_primary_y + lengthdir_y(get_apoapsis,180+get_argument)

draw_set_color(c_red)
draw_line(get_e1_x,get_e1_y,get_primary_x,get_primary_y)
draw_set_color(c_blue)
draw_line(get_primary_x,get_primary_y,get_e2_x,get_e2_y)

//major and minor axis, as well as focus distance?
var major_axis = get_apoapsis + get_periapsis

var foci_distance = major_axis - get_periapsis*2

var minor_axis = sqrt(sqr(get_apoapsis + get_periapsis)-sqr(foci_distance))

//focus point
var focus_x = get_e1_x + lengthdir_x(major_axis/2,get_argument+180)
var focus_y = get_e1_y + lengthdir_y(major_axis/2,get_argument+180)
//end focus point


draw_set_color(c_yellow)
draw_line(focus_x + lengthdir_x(minor_axis/2,get_argument+90),
        focus_y + lengthdir_y(minor_axis/2,get_argument+90),
        focus_x + lengthdir_x(minor_axis/2,get_argument-90),
        focus_y + lengthdir_y(minor_axis/2,get_argument-90))

draw_set_color(c_green)
draw_line(focus_x,focus_y,get_x,get_y)

//draw the elipse
draw_set_color(c_aqua)
d3d_transform_set_rotation_z(get_argument)
d3d_transform_add_translation(focus_x,focus_y,0)
draw_ellipse(-major_axis/2,-minor_axis/2,major_axis/2,minor_axis/2,true)
d3d_transform_set_identity()
//end draw orbit

