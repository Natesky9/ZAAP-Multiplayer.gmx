if field_focus == -1
    {
    exit
    }
var mode = ds_stack_top(menu_stack)

if mode == "Client_Window"
or mode == "Server_Window"
    {
    draw_orbit = !draw_orbit
    }
