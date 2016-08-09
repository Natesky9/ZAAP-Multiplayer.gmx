

var mode = ds_stack_top(menu_stack)

if window_has_focus()
    {
    switch mode
        {
        case "Client_Window":
            {
            Event_Draw_Engine_Client();
            Event_Draw_Entity()
            Event_Draw_Nearby_Ships()
            Event_Draw_Sketch()
            
            draw_asteroid_line()
            break;
            }
        case "Server_Window":
            {
            Event_Draw_Engine_Server();
            Event_Draw_Entity()
            Event_Draw_Sketch()
            
            draw_asteroid_line()
            break;
            }
        default:
            {
            Event_Draw_Engine_Focused()
            break;
            }
        }
    }
else
    {
    
    switch mode
        {
        case "Client_Window":
            {
            Event_Draw_Engine_Unfocused()
            exit
            }
        case "Server_Window":
            {
            Event_Draw_Entity()
            Event_Draw_Sketch()
            Event_Draw_Engine_Server();
            exit
            }
        }
    }
//draw the text console

//draw the grid

draw_set_color(c_black)
draw_line(-6400,0,6400,0)
draw_line(0,-6400,0,6400)
