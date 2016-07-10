var get_button = argument0
var get_function = ds_map_find_value(get_button,"function")
//does the selected function
//returns true if a function is complete
//returns false if no function found

switch get_function
    {
    //----------------------------------------------------------------//
    case "Back":
        {
        var current_menu = ds_stack_top(menu_stack)
        var name = ds_map_find_value(menu_names_to_string,current_menu)
        switch name
            {
            case "edit_menu":
                {
                Save_Buttons(ds_stack_top(menu_stack))
                while ds_stack_top(menu_stack) == ds_map_find_value(menu_names_to_list,"edit_menu")
                    {
                    ds_stack_pop(menu_stack)
                    }
                button_selected = -1
                return true
                }
            case "main_menu":
                {
                console("Can't back out further!")
                //push quit menu
                return true
                }
            default:
                {
                Save_Buttons(ds_stack_top(menu_stack))
                ds_stack_pop(menu_stack)
                button_selected = -1
                return true
                }
            }
        }
    //----------------------------------------------------------------//
    case "Quit":
        {
        play(bong)
        game_end()
        return true
        }
    //----------------------------------------------------------------//
    case "Restart":
        {
        play(ding)
        game_restart()
        return true
        }
    //----------------------------------------------------------------//
    case "Host":
        {
        show("Creating Server")
        ds_stack_push(menu_stack,"Server_Window")
        Server_Create()
        return true
        }
    //----------------------------------------------------------------//
    case "Client_Join":
        {
        show("Loading Client")
        var ip = button_search_value("Address")
        if is_ip(ip)
            {
            if Client_Connect(ip)
            ds_stack_push(menu_stack,"Client_Window")
            }
        else
            {
            console("This is not a valid ip!")
            }
        return true
        }
    //----------------------------------------------------------------//
    case "Delete_Config":
        {
        show("Deleting Config files")
        Delete_Config()
        Menu_Jump_Main()
        console("Deleted Config!")
        return true
        }
    //----------------------------------------------------------------//
    //edit_button is not here because it's a special case
    //add in another function later to fix this
    //----------------------------------------------------------------//
    case "edit_button_color":
        {
        if button_selected == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        var curr_color = ds_map_find_value(button_selected,"color")
        var curr_pos = ds_list_find_index(color_list,curr_color)
        
        if keyboard_check(vk_shift)
            {
            var pos = (curr_pos + 1) mod ds_list_size(color_list)
            }
        else
            {
            var pos = (curr_pos - 1 + ds_list_size(color_list)) mod ds_list_size(color_list)
            }
        var color = ds_list_find_value(color_list,pos)
            
        ds_map_replace(button_selected,"color",color)
        console("replacing button color")
        return true
        }
    //----------------------------------------------------------------//
    case "edit_button_text":
        {
        if button_selected == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        
        

        var text = ds_map_find_value(get_button,"value")
        if text == ""
            {
            console("Type something first!")
            }
        else
            {
            ds_map_replace(button_selected,"text",text)
            console("replacing button text with '" + text + "'")
            keyboard_string = ""
            }
        return true
        }
    //----------------------------------------------------------------//
    case "edit_text_color":
        {
        if button_selected == -1
            {
            console("Invalid format! Only to be used in edit menu")
            return true
            }
        var curr_color = ds_map_find_value(button_selected,"text_color")
        var curr_pos = ds_list_find_index(color_list,curr_color)
        if keyboard_check(vk_shift)
            {
            console("Previous color")
            var pos = (curr_pos + 1) mod ds_list_size(color_list)
            }
        else
            {
            console("Next color")
            var pos = (curr_pos - 1 + ds_list_size(color_list)) mod ds_list_size(color_list)
            }
        var color = ds_list_find_value(color_list,pos)
        ds_map_replace(button_selected,"text_color",color)
        return true
        }
    //----------------------------------------------------------------//
    case "edit_button_function":
        {
        if button_selected == -1
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
                ds_map_replace(button_selected,"function",text)
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
    //----------------------------------------------------------------//
    case "edit_button_type":
        {
        if button_selected == -1
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
            ds_map_replace(button_selected,"kind",text)
            }
        keyboard_string = ""
        return true
        }
    //----------------------------------------------------------------//
    case "firework":
        {
        var color1 = ds_map_find_value(get_button,"color")
        var color2 = ds_map_find_value(get_button,"text_color")
        effect_create_above(ef_explosion,mouse_x,mouse_y,2,color1)
        effect_create_above(ef_firework,mouse_x,mouse_y,2,color2)
        console("BOOM!")
        }
    //----------------------------------------------------------------//
    default:
        {
        return false
        }
    //----------------------------------------------------------------//
    }
show("This should never trigger #Button_Do_Function")
