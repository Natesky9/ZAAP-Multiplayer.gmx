//create Restart Button
var to_menu = argument0

var button = ds_map_create()
ds_map_add(button,"color",c_red)
ds_map_add(button,"text","Restart")
ds_map_add(button,"text_color",c_black)
ds_map_add(button,"pressed",false)
ds_map_add(button,"function","Restart")
ds_map_add(button,"x1",room_width/2-64)
ds_map_add(button,"x2",room_width/2+64)
ds_map_add(button,"y1",room_height-64)
ds_map_add(button,"y2",room_height)
ds_list_add(to_menu,button)
console("Creating Restart Button")
