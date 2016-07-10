var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        exit
        }
    case "Client_Window":
        {
        exit
        }
    default:
        {
        Event_Right_Released_Menu()
        exit
        }
    }
