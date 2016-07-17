if field_focus == -2
    {
    exit
    }

var mode = ds_stack_top(menu_stack)

if mode == "Client_Window"
or mode == "Server_Window"
    {
    draw_nearby_ships = !draw_nearby_ships
    }

