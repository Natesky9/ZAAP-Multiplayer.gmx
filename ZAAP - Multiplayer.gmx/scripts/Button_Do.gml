var get_button = argument0
var done

var kind = ds_map_find_value(get_button,"kind")

switch kind
    {
    case "action":
        {
        //find the menu it's pointing to
        done = Button_Do_Menu(get_button)
        show("Button_Do_Menu is " + string(done))
        
        if !done 
        done = Button_Do_Function(get_button)
        show("Button_Do_Function is " + string(done))
           
        if !done
            {//if nothing is found
            show("This button doesn't do anything!")
            console("Shift-Click to edit")
            }
        exit
        }
    case "field":
        {
        if field_focus == get_button
            {
            field_focus = -1
            Button_Do_Function(get_button)
            }
        else
            {
            field_focus = get_button
            ds_map_replace(get_button,"value","")
            }
        var value = ds_map_find_value(get_button,"value")
        keyboard_string = value
        exit
        }
    }

