if keyboard_check_pressed(vk_shift)
    {
    Event_Key_Pressed_Shift()
    //console("Test")
    }


mode = ds_stack_top(menu_stack)

switch keyboard_key
    {
    //--------------------------------//
    case ord('Q'):
        {
        Event_Key_Pressed_Q()
        exit
        }
    //--------------------------------//
    case ord('V'):
        {
        Event_Key_Pressed_V()
        }
    //--------------------------------//
    case ord('W'):
        {
        Event_Key_Pressed_W()
        exit
        }
    //--------------------------------//
    case ord('A'):
        {
        Event_Key_Pressed_A()
        exit
        }
    //--------------------------------//
    case ord('S'):
        {
        Event_Key_Pressed_S()
        exit
        }
    //--------------------------------//
    case ord('D'):
        {
        Event_Key_Pressed_D()
        exit
        }
    //--------------------------------//
    case vk_escape:
        {
        Event_Key_Pressed_Escape()
        exit
        }

    //--------------------------------//
    case vk_enter:
        {
        Event_Key_Pressed_Enter()
        exit
        }
    //--------------------------------//
    default:
        {   
        Event_Key_Pressed_Default()
        exit
        }
    //--------------------------------//
    }
