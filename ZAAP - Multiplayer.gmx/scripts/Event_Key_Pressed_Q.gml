if field_focus == -2
    {
    exit
    }

switch ds_stack_top(menu_stack)
    {
    case "Client_Window":
        {
        Client_Request_Ship_Control()
        }
    case "Server_Window":
        {
        exit
        }
    default:
        {
        exit
        }
    }
    

