lifetime += 1
var mode = ds_stack_top(menu_stack)
switch mode
    {
//--------------------------------//
    case "Client_Window":
        {Event_Step_Entity_Client();exit}
//--------------------------------//
    case "Server_Window":
        {Event_Step_Entity_Server();exit}
//--------------------------------//
    default:
        {
        view_xview[0] = 0
        view_yview[0] = 0
        view_wview[0] = 640
        view_hview[0] = 640
        //if it is not client or server, do regular menu function
        Event_Step_Engine_Drag_Button()
        exit
        }
//--------------------------------//
    }

