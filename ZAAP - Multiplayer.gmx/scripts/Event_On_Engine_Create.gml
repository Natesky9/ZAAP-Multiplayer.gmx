number_of_maps = 0



//Host object's create event
lifetime = 0
field_focus = -1
//set the timeout for connections to 1 second
network_set_config(network_config_connect_timeout,1000)
Ping = -1
SSS = -1
Ship_Control = -1

pause_menu = "Game is Paused"

Event_Engine_Create_Data_Structures()
Create_Panels()
Config_Load()
//push the main menu to the top of the stack
Menu_Jump_Main()
//end pushing main menu
button_left_pressed = -1
button_right_pressed = -1
mouse_vector_x = 0
mouse_vector_y = 0
draw_orbit = false
draw_nearby_ships = false
console("============")
console("version .059")
console("============")

