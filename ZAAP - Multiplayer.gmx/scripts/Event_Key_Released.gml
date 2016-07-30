mode = ds_stack_top(menu_stack)

switch mode
    {
    //--------------------------------//
    case "Server_Window":
        {
        Event_Key_Released_Server()
        exit
        }
    //--------------------------------//
    case "Client_Window":
        {
        Event_Key_Released_Client()
        exit
        }
    //--------------------------------//
    default:
        {
        exit
        }
    //--------------------------------//
    }
