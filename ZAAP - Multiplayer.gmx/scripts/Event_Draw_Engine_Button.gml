var button = argument0

var button_kind = ds_map_find_value(button,"kind")

switch button_kind
    {
    case "action":
        {
        Event_Draw_Engine_Button_Action(button)
        exit;
        }
    case "field":
        {
        Event_Draw_Engine_Button_Field(button)
        exit;
        }
    default:
        {
        console("ERROR! Invalid button! #Event_Draw_Engine_Button")
        exit;
        }
    }
show("This text should never trigger")
