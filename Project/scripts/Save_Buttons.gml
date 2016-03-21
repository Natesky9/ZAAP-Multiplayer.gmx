var list = argument0
var name = ds_map_find_value(menu_names_to_string,list)
//console("Saving " + name)
ini_open(name + ".ini");
for (var i = 0;i < ds_list_size(list);i += 1)
    {
    show("iteration " + string(i))
    var button = ds_list_find_value(list,i);
    
    
    var button_color = ds_map_find_value(button,"color")
    ini_write_real("Button" + string(i),"color",button_color);
    
    var button_text = ds_map_find_value(button,"text")
    ini_write_string("Button" + string(i),"text",button_text);
    
    var button_text_color = ds_map_find_value(button,"text_color")
    ini_write_real("Button" + string(i),"text_color",button_text_color);
    
    var button_kind = ds_map_find_value(button,"kind")
    ini_write_string("Button" + string(i),"kind",button_kind)
    
    var button_pressed = ds_map_find_value(button,"pressed")
    ini_write_real("Button" + string(i),"pressed",button_pressed);
    
    var button_function = ds_map_find_value(button,"function")
    show("saving function as: " + button_function)
    ini_write_string("Button" + string(i),"function",button_function);
    
    var button_value = ds_map_find_value(button,"value")
    ini_write_string("Button" + string(i),"value",button_value)
    
    var button_x1 = ds_map_find_value(button,"x1")
    ini_write_real("Button" + string(i),"x1",button_x1);
    
    var button_x2 = ds_map_find_value(button,"x2")
    ini_write_real("Button" + string(i),"x2",button_x2);
    
    var button_y1 = ds_map_find_value(button,"y1")
    ini_write_real("Button" + string(i),"y1",button_y1);
    
    var button_y2 = ds_map_find_value(button,"y2")
    ini_write_real("Button" + string(i),"y2",button_y2);
    }
ini_close()
//show_debug_message("Saving Buttons!")
