var get_button = argument0
var get_do = ds_map_find_value(get_button,"function")
//does the selected function
//returns true if a function is complete
//returns false if no function found

switch get_do
    {
    case "Back":
        {
        var current_menu = ds_stack_pop(menu_stack)
        if current_menu == "edit_menu"
        selected_button = -1
        return true
        }
    case "Quit":
        {
        play(bong)
        game_end()
        return true
        }
    case "Restart":
        {
        play(ding)
        game_restart()
        return true
        }
    case "Host":
        {
        show_debug_message("Creating Server")
        mode = "Host"
        return true
        }
    case "Client":
        {
        show_debug_message("Loading Client")
        mode = "Client"
        return true
        }
    case "Delete_Config":
        {
        show("Deleting Config files")
        Delete_Config()
        Menu_Jump_Main()
        console("Deleted Config!")
        return true
        }
    //edit_button is not here because it's a special case
    //add in another function later to fix this
    case "edit_button_color":
        {
        if selected_button == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
            
        var pos = irandom(ds_list_size(color_list)-1)
        var color = ds_list_find_value(color_list,pos)
        ds_map_replace(selected_button,"color",color)
        console("replacing button color")
        return true
        }
    case "edit_button_text":
        {
        if selected_button == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        var text = keyboard_string
        if text == ""
            {
            console("Type something first!")
            }
        else
            {
            ds_map_replace(selected_button,"text",text)
            console("replacing button text with '" + text + "'")
            keyboard_string = ""
            }
        return true
        }
    case "edit_text_color":
        {
        if selected_button == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        var pos = irandom(ds_list_size(color_list)-1)
        var color = ds_list_find_value(color_list,pos)
        ds_map_replace(selected_button,"text_color",color)
        return true
        }
    case "edit_button_function":
        {
        if selected_button == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        var text = keyboard_string
        if text == ""
            {
            console("Type something first!")
            }
        else
            {
            if is_function(text) or is_menu(text)
                {
                ds_map_replace(selected_button,"function",text)
                console("replacing button function with '" + text + "'")
                }
            else
                {
                console("This menu doesn't exist!")
                console("Try creating it with /menu_create [name]")
                }
            }
        keyboard_string = ""
        return true
        }
    default:
        {

        console("Shift-Click to edit")
        return false
        }
    }
show("This should never trigger #Button_Do_Function")
