if field_focus == -2
    {
    exit
    }
    
if ds_stack_top(menu_stack) == "Client_Window"
    {
    Event_Key_Pressed_Client_S()
    }
