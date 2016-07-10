var mode = ds_stack_top(menu_stack)
switch mode
    {
//--------------------------------//
    case "Client_Window":
        {
        Event_Network_Engine_Client()
        exit
        }
//--------------------------------//
    case "Server_Window":
        {
        Event_Network_Engine_Server()
        exit
        }
//--------------------------------//
    default:
        {
        show("ERROR, Network event received in NON client or server!")
        exit
        }
//--------------------------------//
    }

