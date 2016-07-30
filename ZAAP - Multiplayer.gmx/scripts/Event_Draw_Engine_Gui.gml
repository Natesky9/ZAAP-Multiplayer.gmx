var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Client_Window":
        {
        Event_Draw_Playerlist()
        Event_Draw_Ship_Gui()
        Event_Draw_Engine_Console()
        }
    case "Server_Window":
        {
        Event_Draw_Action_Panel()
        Event_Draw_Playerlist()
        Event_Draw_Ship_Gui()
        Event_Draw_Engine_Console()
        }
    default:
        {
        break
        }
    }
