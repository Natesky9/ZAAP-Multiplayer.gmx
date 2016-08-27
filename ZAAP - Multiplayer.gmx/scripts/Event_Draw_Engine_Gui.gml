draw_set_color(c_blue)
draw_set_halign(fa_left)
draw_text(0,200/2,string(view_size))


var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Client_Window":
        {
        Event_Draw_Playerlist()
        Event_Draw_Engine_Console()
        break
        }
    case "Server_Window":
        {
        Event_Draw_Action_Panel()
        Event_Draw_Playerlist()
        Event_Draw_Ship_Gui()
        Event_Draw_Engine_Console()
        break
        }
    default:
        {
        Event_Draw_Engine_Console()
        break
        }
    }
