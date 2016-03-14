//create Options Button
var to_menu = argument0

var button = ds_map_create()
ds_map_add(button,"color",c_lime)
ds_map_add(button,"text","Options")
ds_map_add(button,"text_color",c_black)
ds_map_add(button,"pressed",false)
ds_map_add(button,"function","Options")
ds_map_add(button,"x1",400)
ds_map_add(button,"x2",550)
ds_map_add(button,"y1",180)
ds_map_add(button,"y2",250)
ds_list_add(to_menu,button)
console("Creating Options Button")
