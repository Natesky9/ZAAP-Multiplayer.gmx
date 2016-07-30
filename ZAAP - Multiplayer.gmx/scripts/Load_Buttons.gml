var name = argument0

ini_open(name + ".ini")

console("Loading Buttons for " + name)

var i = 0;
while ini_section_exists("Button" + string(i)) //ini_read_real("available","Button" + string(i),false)
    {
    show("Adding " + string(i))
    get_button = create_map()
    
    var button_color = ini_read_real("Button" + string(i),"color",c_blue);
    ds_map_add(get_button,"color",button_color)
    
    var button_text = ini_read_string("Button" + string(i),"text","ERROR");
    ds_map_add(get_button,"text",button_text)
    
    var button_text_color = ini_read_real("Button" + string(i),"text_color",c_black);
    ds_map_add(get_button,"text_color",button_text_color)
    
    var button_kind = ini_read_string("Button" + string(i),"kind","button_action")
    ds_map_add(get_button,"kind",button_kind)
    
    var button_pressed = ini_read_real("Button" + string(i),"pressed",false);
    ds_map_add(get_button,"pressed",button_pressed)//unnecesary
    
    var button_function = ini_read_string("Button" + string(i),"function","Quit");
    ds_map_add(get_button,"function",button_function)
    
    var button_value = ini_read_string("Button" + string(i),"value","")
    ds_map_add(get_button,"value",button_value)
    
    var button_x1 = ini_read_real("Button" + string(i),"x1",0);
    ds_map_add(get_button,"x1",button_x1)
    
    var button_x2 = ini_read_real("Button" + string(i),"x2",200);
    ds_map_add(get_button,"x2",button_x2)
    
    var button_y1 = ini_read_real("Button" + string(i),"y1",0);
    ds_map_add(get_button,"y1",button_y1)
    
    var button_y2 = ini_read_real("Button" + string(i),"y2",64);
    ds_map_add(get_button,"y2",button_y2)
    
    var list = ds_map_find_value(menu_names_to_list,name)
    ds_list_add(list,get_button)
    
    
    i += 1
    }
ini_close()
