ini_open("Menu_Buttons.ini");

for (i = 1;i <=ds_list_size(buttons);i += 1)
    {
    var button = ds_list_find_value(buttons,i);
    
    ini_write_real('available','Button' + string(i),true)
    
    var button_color = ds_map_find_value(button,'color')
    ini_write_real('button' + string(i),'color',button_color);
    
    var button_text = ds_map_find_value(button,'text')
    ini_write_string('button' + string(i),'text',button_text);
    
    var button_text_color = ds_map_find_value(button,'text_color')
    ini_write_real('button' + string(i),'text_color',button_text_color);
    
    var button_pressed = ds_map_find_value(button,'pressed')
    ini_write_real('button' + string(i),'pressed',button_pressed);
    
    var button_function = ds_map_find_value(button,'function')
    ini_write_string('button' + string(i),'function',button_function);
    
    var button_x1 = ds_map_find_value(button,'x1')
    ini_write_real('button' + string(i),'x1',button_x1);
    
    var button_x2 = ds_map_find_value(button,'x2')
    ini_write_real('button' + string(i),'x2',button_x2);
    
    var button_y1 = ds_map_find_value(button,'y1')
    ini_write_real('button' + string(i),'y1',button_y1);
    
    var button_y2 = ds_map_find_value(button,'y2')
    ini_write_real('button' + string(i),'y2',button_y2);
    }
ini_close()
show_debug_message("Saving Buttons!")
ini_open("Menu_Buttons.ini")
ini_close()
