//----------------------------------------------------------------//
//This is to be replaced by pre-packaged menu choices//
//----------------------------------------------------------------//

//Generate the config file
var main_menu = menu_create("main_menu")
var option_menu = menu_create("option_menu")
var edit_menu = menu_create("edit_menu")
var quit_menu = menu_create("quit_menu")
var host_menu = menu_create("host_menu")
var client_menu = menu_create("client_menu")


Config_Save_Menu(main_menu)
Config_Save_Menu(option_menu)
Config_Save_Menu(edit_menu)
Config_Save_Menu(quit_menu)
//format is: menu,x1,x2,y1,y2,color,text,text_color,kind,function
Add_Button(main_menu,room_width-60,room_width,0,40,c_gray,"Quit",c_black,"action","quit_menu")
Add_Button(main_menu,0,100,0,100,c_blue,"Options",c_white,"action","option_menu")
Add_Button(main_menu,350,450,250,300,c_green,"Join Game",c_fuchsia,"action","client_menu")
Add_Button(main_menu,150,300,200,250,c_lime,"Create Game",c_fuchsia,"action","host_menu")
Add_Button(main_menu,400,600,440,500,c_yellow,"Pointless button",c_purple,"action","Nothing")

Add_Button(option_menu,100,200,0,100,c_orange,"Back",c_black,"action","Back")
Add_Button(option_menu,room_width-150,room_width,room_height-50,room_height,c_black,"Delete_Config",c_white,"action","Delete_Config")

Add_Button(edit_menu,100,200,0,100,c_yellow,"Back",c_black,"action","Back")
Add_Button(edit_menu,500,600,50,100,c_red,"Button Color",c_black,"action","edit_button_color")
Add_Button(edit_menu,500,600,150,200,c_red,"Button Text",c_black,"field","edit_button_text")
Add_Button(edit_menu,500,600,250,300,c_red,"Text Color",c_black,"action","edit_text_color")
Add_Button(edit_menu,500,600,350,400,c_red,"Function",c_black,"field","edit_button_function")
Add_Button(edit_menu,500,600,450,500,c_red,"Type",c_black,"action","edit_button_type")

Add_Button(quit_menu,room_width/2-120,room_width/2+120,room_height/2-220,room_height/2-200,c_aqua,"Do you really want to quit?",c_black,"action","firework");
Add_Button(quit_menu,room_width/2-200,room_width/2-100,room_height/2-50,room_height/2+50,c_red,"Yes",c_white,"action","Quit");
Add_Button(quit_menu,room_width/2+100,room_width/2+200,room_height/2-50,room_height/2+50,c_green,"No",c_white,"action","Back");

Add_Button(host_menu,100,200,0,100,c_yellow,"Back",c_black,"action","Back")
Add_Button(host_menu,room_width/2-100,room_width/2+100,room_height/2-50,room_height/2+50,c_blue,"Start Server",c_black,"action","Host")

Add_Button(client_menu,100,200,0,100,c_yellow,"Back",c_black,"action","Back")
Add_Button(client_menu,room_width/2-100,room_width/2+100,room_height/2-70,room_height/2-20,c_white,"Server Address",c_black,"field","Nothing")
Add_Button(client_menu,room_width/2-100,room_width/2+100,room_height/2+70,room_height/2+20,c_navy,"Join Server",c_black,"action","firework")

for (var i = 0;i < ds_list_size(menu_list);i += 1)
    {
    var list = ds_list_find_value(menu_list,i)
    
    Save_Buttons(list)
    Save_Buttons(list)
    }
console("Buttons Saved!")
