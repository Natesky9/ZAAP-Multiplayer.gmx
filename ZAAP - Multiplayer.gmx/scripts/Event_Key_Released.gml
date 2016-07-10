mode = ds_stack_top(menu_stack)

switch mode
    {
    //--------------------------------//
    case "Server_Window":
        {
        exit
        }
    //--------------------------------//
    case "Client_Window":
        {
        //------------------------//
        if keyboard_check_released(ord('W'))
            {
            Event_Key_Released_Client_W()
            exit
            }
        //------------------------//
        if keyboard_check_released(ord('A'))
            {
            Event_Key_Released_Client_A()
            exit
            }
        //------------------------//
        if keyboard_check_released(ord('S'))
            {
            Event_Key_Released_Client_S()
            }
        //------------------------//
        if keyboard_check_released(ord('D'))
            {
            Event_Key_Released_Client_D()
            exit
            }
        //------------------------//
        exit
        }
    //--------------------------------//
    default:
        {
        exit
        }
    //--------------------------------//
    }
