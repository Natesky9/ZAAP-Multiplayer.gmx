var button = ds_map_create()
ds_list_add(argument[0],button)

ds_map_add(button,"pressed",false)
ds_map_add(button,"value","")

if argument_count > 1
    {
    ds_map_add(button,"x1",argument[1])
    ds_map_add(button,"x2",argument[2])
    ds_map_add(button,"y1",argument[3])
    ds_map_add(button,"y2",argument[4])
    if argument_count > 4
        {
        ds_map_add(button,"color",argument[5])
        ds_map_add(button,"text",argument[6])
        ds_map_add(button,"text_color",argument[7])
        ds_map_add(button,"kind",argument[8])
        ds_map_add(button,"function",argument[9])
        }
    else
        {
        ds_map_add(button,"color",c_orange)
        ds_map_add(button,"text","Back")
        ds_map_add(button,"text_color",c_black)
        ds_map_add(button,"kind","action")
        ds_map_add(button,"function","Back")
        }
    }
else
    {
    ds_map_add(button,"color",c_orange)
    ds_map_add(button,"text","Shift-right click#to edit")
    ds_map_add(button,"text_color",c_black)
    ds_map_add(button,"kind","action")
    ds_map_add(button,"function","Nothing")
    ds_map_add(button,"x1",room_width/2-100)
    ds_map_add(button,"x2",room_width/2+100)
    ds_map_add(button,"y1",room_height/2-50)
    ds_map_add(button,"y2",room_height/2+50)
    }
