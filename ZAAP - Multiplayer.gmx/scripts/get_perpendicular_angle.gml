var nearest_body = argument0
var input_x = argument1
var input_y = argument2
var clockwise = argument3

var get_x = ds_map_find_value(nearest_body,"x")
var get_y = ds_map_find_value(nearest_body,"y")

var angle = point_direction(get_x,get_y,input_x,input_y)

if  clockwise return angle + 90
if !clockwise return angle - 90
