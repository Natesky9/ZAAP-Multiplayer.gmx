get_button = create_map()
ds_list_add(argument[0],get_button)

ds_map_add(get_button,"pressed",false)
ds_map_add(get_button,"value","")

if argument_count > 1
    {
    ds_map_add(get_button,"x1",argument[1])
    ds_map_add(get_button,"x2",argument[2])
    ds_map_add(get_button,"y1",argument[3])
    ds_map_add(get_button,"y2",argument[4])
    if argument_count > 4
        {
        ds_map_add(get_button,"color",argument[5])
        ds_map_add(get_button,"text",argument[6])
        ds_map_add(get_button,"text_color",argument[7])
        ds_map_add(get_button,"kind",argument[8])
        ds_map_add(get_button,"function",argument[9])
        }
    else
        {
        ds_map_add(get_button,"color",c_orange)
        ds_map_add(get_button,"text","Back")
        ds_map_add(get_button,"text_color",c_black)
        ds_map_add(get_button,"kind","action")
        ds_map_add(get_button,"function","Back")
        }
    }
else
    {
    ds_map_add(get_button,"color",c_orange)
    ds_map_add(get_button,"text","Shift-right click#to edit")
    ds_map_add(get_button,"text_color",c_black)
    ds_map_add(get_button,"kind","action")
    ds_map_add(get_button,"function","Nothing")
    ds_map_add(get_button,"x1",room_width/2-100)
    ds_map_add(get_button,"x2",room_width/2+100)
    ds_map_add(get_button,"y1",room_height/2-50)
    ds_map_add(get_button,"y2",room_height/2+50)
    }
