//Host object's create event
lifetime = 0
mode = "Menu"
menu_list = ds_list_create()

menu_names_to_string = ds_map_create()
menu_names_to_list = ds_map_create()
menu_stack = ds_stack_create()

console_text = ds_list_create()





buttons = ds_list_create()
Config_Load()

//push the main menu to the top of the stack
Menu_Jump_Main()
//end pushing main menu

button_left_pressed = -1
button_right_pressed = -1

color_list = ds_list_create()
ds_list_add(color_list,c_red,c_orange,c_yellow,c_green,c_blue,c_purple,c_white,c_gray,c_black)

function_list = ds_list_create()
ds_list_add(function_list,"Back")
ds_list_add(function_list,"Quit")
ds_list_add(function_list,"Restart")
ds_list_add(function_list,"Host")
ds_list_add(function_list,"Client")
ds_list_add(function_list,"Delete_Config")
ds_list_add(function_list,"edit_button_color")
ds_list_add(function_list,"edit_button_text")
ds_list_add(function_list,"edit_text_color")
ds_list_add(function_list,"edit_button_function")

command_list = ds_list_create()
ds_list_add(command_list,"clear")
ds_list_add(command_list,"menu_create")
ds_list_add(command_list,"list")
