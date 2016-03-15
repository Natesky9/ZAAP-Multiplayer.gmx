var command = argument0
command = string_replace_all(command," ","")
var command_argument = argument1

switch command
    {
    case "clear":
        {
        ds_list_clear(console_text)
        exit
        }
    case "menu_create":
        {
        if command_argument == "" 
            {//if no argument is given
            console("Syntax is /menu_create [name]")
            exit
            }
        else
            {
            console("Checking availability...")
            if is_function(command_argument)
            or is_menu(command_argument)
                {
                console("This name is already taken, try something else")
                exit
                }
            else
                {
                menu_create(command_argument)
                var get_list = ds_map_find_value(menu_names_to_list,command_argument)
                Config_Add_Menu(get_list)
                exit
                }
            }
        }
    case "list":
        {
        switch command_argument
            {
            case "menu":
                {
                console("Listing all menus:")
                for (i = 0; i < ds_list_size(menu_list);i += 1)
                    {
                    var get_menu = ds_list_find_value(menu_list,i)
                    var name = ds_map_find_value(menu_names_to_string,get_menu)
                    console(name)
                    }
                console("Done listing all menus")
                exit
                }
            case "command":
                {
                console("Listing all commands:")
                for (i = 0;i < ds_list_size(command_list);i += 1)
                    {
                    var get_command = ds_list_find_value(command_list,i)
                    console(get_command)
                    }
                console("Done listing all commands")
                exit
                }
            case "function":
                {
                console("listing all functions:")
                for (i = 0;i < ds_list_size(function_list);i += 1)
                    {
                    var get_function = ds_list_find_value(function_list,i)
                    console(get_function)
                    }
                console("Done listing all functions")
                exit
                }
            default:
                {
                console("Arguments are: menu, command, function")
                exit
                }
            }

        }
    default:
        {
        console("This is not a valid command!")
        }
    }
