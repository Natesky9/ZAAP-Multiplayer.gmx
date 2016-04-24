var mode = ds_stack_top(menu_stack)

switch mode
    {
    case "Server_Window":
        {
        console("Nothing here yet")
        exit
        }
    case "Client_Window":
        {
        console("Sorry, not implimented!")
        exit
        }
    default:
        {
        Event_Left_Released_Menu()
        exit
        }
    }
