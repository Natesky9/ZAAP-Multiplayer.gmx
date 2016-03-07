ini_open("Menu_Buttons.ini");

var i = 1;
while ini_read_real("available","Button" + string(i),false)
    {
    show("Adding " + string(i))
    var button = ds_map_create();
    
    var button_color = ini_read_real("button" + string(i),"color",c_blue);
    ds_map_add(button,"color",button_color)
    
    var button_text = ini_read_string("button" + string(i),"text","ERROR");
    ds_map_add(button,"text",button_text)
    
    var button_text_color = ini_read_real("button" + string(i),"text_color",c_black);
    ds_map_add(button,"text_color",button_text_color)
    
    var button_pressed = ini_read_real("button" + string(i),"pressed",false);
    ds_map_add(button,"pressed",button_pressed)//unnecesary
    
    var button_function = ini_read_string("button" + string(i),"function","Quit");
    ds_map_add(button,"function",button_function)
    
    var button_x1 = ini_read_real("button" + string(i),"x1",0);
    ds_map_add(button,"x1",button_x1)
    
    var button_x2 = ini_read_real("button" + string(i),"x2",200);
    ds_map_add(button,"x2",button_x2)
    
    var button_y1 = ini_read_real("button" + string(i),"y1",0);
    ds_map_add(button,"y1",button_y1)
    
    var button_y2 = ini_read_real("button" + string(i),"y2",64);
    ds_map_add(button,"y2",button_y2)
    
    ds_list_add(buttons,button)
    
    
    i += 1
    }
ini_close()
