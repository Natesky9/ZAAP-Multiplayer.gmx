//create menu button 4
var button = ds_map_create()
ds_map_add(button,"color",c_green)
ds_map_add(button,"text","Host")
ds_map_add(button,"text_color",c_black)
ds_map_add(button,"pressed",false)
ds_map_add(button,"function","Host")
ds_map_add(button,"x1",0)
ds_map_add(button,"x2",160)
ds_map_add(button,"y1",60)
ds_map_add(button,"y2",160)
ds_list_add(buttons,button)