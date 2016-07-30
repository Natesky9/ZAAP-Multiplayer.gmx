
if keyboard_check_pressed(vk_enter)
    {
    Event_Key_Pressed_Enter()
    }


mode = ds_stack_top(menu_stack)

switch mode
    {
    //--------------------------------//
    case "Client_Window":
        {
        Event_Key_Pressed_Client()
        break
        }
    //--------------------------------//
    case "Server_Window":
        {
        Event_Key_Pressed_Server()
        break
        }
    //--------------------------------//
    default:
        {
        Event_Key_Pressed_Default()
        
        if letter_was_pressed('V')
            {
            Event_Key_Pressed_Default_V()
            exit
            }
        if keyboard_check_pressed(vk_escape)
            {
            Event_Key_Pressed_Default_Escape()
            exit
            }
        break
        }
    //--------------------------------//
    }
