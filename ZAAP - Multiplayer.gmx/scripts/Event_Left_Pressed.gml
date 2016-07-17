var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        if point_in_rectangle(mouse_x,mouse_y,
        panel_playerlist_x1,panel_playerlist_y1,
        panel_playerlist_x2,panel_playerlist_y2)
            {//if it is in the playerlist panel
            if mouse_x <= 32 and mouse_x >= 0
                {//if it is in the tiny square (Add the tiny square)
                var pos = mouse_y div 32 
                var get_sss = ds_list_find_value(playerlist,pos)
                if !is_undefined(get_sss)
                    {
                    console("Kicking Player[" + string(get_sss) + "]")
                    Packet_Write(packet.kick,get_sss)
                    }
                }
            exit;
            }
        else
            {
            mouse_vector_x = mouse_x
            mouse_vector_y = mouse_y
            exit
            }
        exit
        }
    case "Client_Window":
        {
        if point_in_rectangle(mouse_x,mouse_y,
        panel_playerlist_x1,panel_playerlist_y1,
        panel_playerlist_x2,panel_playerlist_y2)
            {//if it is in the playerlist panel
            var get_num = mouse_y div 32;
            console("Clicked on Player[" + string(get_num) + "]")
            console("Why would you do that?")
            exit;
            }
        else
            {
            mouse_vector_x = mouse_x
            mouse_vector_y = mouse_y
            exit
            }
        exit
        }
    default:
        {
        Event_Left_Pressed_Menu()
        exit
        }
    }


