var button = ds_map_create()
ds_list_add(argument[0],button)

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
        ds_map_add(button,"function",argument[8])
        ds_map_add(button,"pressed",false)
        }
    else
        {
        ds_map_add(button,"color",c_orange)
        ds_map_add(button,"text","Back")
        ds_map_add(button,"text_color",c_black)
        ds_map_add(button,"function","Back")
        ds_map_add(button,"pressed",false)
        }
    }
else
    {
    ds_map_add(button,"color",c_orange)
    ds_map_add(button,"text","ERROR")
    ds_map_add(button,"text_color",c_black)
    ds_map_add(button,"pressed",false)
    ds_map_add(button,"function","Nothing")
    ds_map_add(button,"x1",200)
    ds_map_add(button,"x2",300)
    ds_map_add(button,"y1",0)
    ds_map_add(button,"y2",64)
    }