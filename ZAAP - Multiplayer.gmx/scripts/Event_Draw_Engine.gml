Event_Draw_Entity()
Event_Draw_Engine_Console()

var mode = ds_stack_top(menu_stack)

if window_has_focus()
    {
    switch mode
        {
        case "Client_Window":
            {
            Event_Draw_Engine_Client();
            Event_Draw_Playerlist()
            break;
            }
        case "Server_Window":
            {
            Event_Draw_Engine_Server();
            Event_Draw_Playerlist()
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
    Event_Draw_Engine_Unfocused()
    
    switch mode
        {
        case "Client_Window":
            {
            Event_Draw_Playerlist()
            exit
            }
        case "Server_Window":
            {
            Event_Draw_Playerlist()
            exit
            }
        }
    }
//draw the text console
