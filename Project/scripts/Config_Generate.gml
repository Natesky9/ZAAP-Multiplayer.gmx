//Generate the config file
menu_create("main_menu")
menu_create("option_menu")
menu_create("edit_menu")

var main_menu = ds_map_find_value(menu_names_to_list,"main_menu")
var option_menu = ds_map_find_value(menu_names_to_list,"option_menu")
var edit_menu = ds_map_find_value(menu_names_to_list,"edit_menu")
//this is temp

Config_Add_Menu(main_menu)
Config_Add_Menu(option_menu)
Config_Add_Menu(edit_menu)

Add_Button(main_menu,room_width-60,room_width,0,40,c_gray,"Quit",c_black,"Quit")
Add_Button(main_menu,0,100,0,100,c_blue,"Options",c_white,"option_menu")
Add_Button(main_menu,400,600,440,500,c_yellow,"Pointless button",c_purple,"Nothing")

Add_Button(option_menu,100,200,0,100,c_orange,"Back",c_black,"Back")
Add_Button(option_menu,room_width-150,room_width,room_height-50,room_height,c_black,"Delete_Config",c_white,"Delete_Config")

Add_Button(edit_menu,100,200,0,100,c_yellow,"Back",c_black,"Back")
Add_Button(edit_menu,500,600,50,100,c_red,"Button Color",c_black,"edit_button_color")
Add_Button(edit_menu,500,600,150,200,c_red,"Button Text",c_black,"edit_button_text")
Add_Button(edit_menu,500,600,250,300,c_red,"Text Color",c_black,"edit_text_color")
Add_Button(edit_menu,500,600,350,400,c_red,"Function",c_black,"edit_button_function")

for (var i = 0;i < ds_list_size(menu_list);i += 1)
    {
    var list = ds_list_find_value(menu_list,i)
    
    Save_Buttons(list)
    Save_Buttons(list)
    }
console("Buttons Saved!")
