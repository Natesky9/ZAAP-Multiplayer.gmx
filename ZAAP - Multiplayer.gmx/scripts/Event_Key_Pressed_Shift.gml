switch ds_stack_top(menu_stack)
    {
    //----------------//
    case "Client_Window":
        {
        Event_Key_Pressed_Client_Shift()
        console("Not added yet!")
        }
    //----------------//
    case "Server_Window":
        {
        //console("This hasn't been added yet!")
        exit
        }
    //----------------//
    default:
        {
        console("No Shift Press event")
        exit
        }
    //----------------//
    }
