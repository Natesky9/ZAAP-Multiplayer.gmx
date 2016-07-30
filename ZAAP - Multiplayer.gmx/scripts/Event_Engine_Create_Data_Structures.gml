//Create the Engine's Data Sturctures
//--------------------------------//
menu_list = ds_list_create()
menu_names_to_string = create_map()
menu_names_to_list = create_map()
menu_stack = ds_stack_create()
//--------------------------------//
console_text = ds_list_create()
color_list = ds_list_create()
ds_list_add(color_list,c_red,c_orange,c_yellow,c_green,c_blue,c_purple,c_white,c_gray,c_black)
//--------------------------------//
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
ds_list_add(function_list,"firework")
ds_list_add(function_list,"edit_pause_text")
//--------------------------------//
type_list = ds_list_create()
ds_list_add(type_list,"button_action")
ds_list_add(type_list,"field")
ds_list_add(type_list,"toggle")
ds_list_add(type_list,"slider")
//--------------------------------//
command_list = ds_list_create()
ds_list_add(command_list,"clear")
ds_list_add(command_list,"menu_create")
ds_list_add(command_list,"list")
ds_list_add(command_list,"edit_pause_text")
//--------------------------------//
kind_list = ds_list_create()
ds_list_add(kind_list,"button_action")
ds_list_add(kind_list,"field")
//ds_list_add(kind_list,"toggle")
//--------------------------------//
//Networking
ssn_map = create_map()
sss_map = create_map()
playerlist = ds_list_create()
client_bin = buffer_create(1024,buffer_grow,1)
client_bout = buffer_create(1024,buffer_grow,1)
server_bin = buffer_create(1024,buffer_grow,1)
server_bout = buffer_create(1024,buffer_grow,1)
async_packet = 0
//--------------------------------//
entity_asteroid_list = ds_list_create()
entity_ship_list = ds_list_create()
entity_station_list = ds_list_create()
entity_vortex_list = ds_list_create()

entity_ship_controllers = create_map()
entity_station_controllers = create_map()

sketch_list = ds_list_create()
