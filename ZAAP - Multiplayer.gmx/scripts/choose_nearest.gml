var get_x = argument0
var get_y = argument1

var body_1 = argument2
var body_2 = argument3

var body_1_x = ds_map_find_value(body_1,"x")
var body_1_y = ds_map_find_value(body_1,"y")

var body_2_x = ds_map_find_value(body_2,"x")
var body_2_y = ds_map_find_value(body_2,"y")

var dist_to_body_1 = point_distance(get_x,get_y,body_1_x,body_1_y)
var dist_to_body_2 = point_distance(get_x,get_y,body_2_x,body_2_y)

if dist_to_body_1 == dist_to_body_2
return choose(body_1,body_2)

if dist_to_body_1 < dist_to_body_2
return body_1

if dist_to_body_1 > dist_to_body_2
return body_2
