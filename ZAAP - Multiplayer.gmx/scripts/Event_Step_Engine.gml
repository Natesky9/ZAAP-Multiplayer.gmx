lifetime += 1
var mode = ds_stack_top(menu_stack)
switch mode
    {
//--------------------------------//
    case "Client_Window":
        {
        Event_Step_Entity_Client();
        Event_Step_Entity()
        break
        }
//--------------------------------//
    case "Server_Window":
        {
        Entity_Ship_Update_Clients()
        Event_Step_Entity();
        break
        }
//--------------------------------//
    default:
        {
        view_xview[0] = 0
        view_yview[0] = 0
        view_wview[0] = 640
        view_hview[0] = 640
        set_view_size()
        //if it is not client or server, do regular menu function
        Event_Step_Engine_Drag_Button()
        break
        }
//--------------------------------//
    }

//didn't know where to put this
if mouse_check_button(mb_middle)
    {
    view_xview[0] += pan_x - mouse_x
    view_yview[0] += pan_y - mouse_y
    }
