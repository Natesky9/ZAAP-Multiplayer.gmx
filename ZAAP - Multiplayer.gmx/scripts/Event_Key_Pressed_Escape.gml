switch ds_stack_top(menu_stack)
    {
    //----------------//
    case "Server_Window":
        {
        //console("Haven't added this yet!")
        exit
        }
    //----------------//
    case "Client_Window":
        {
        //console("To be added!")
        exit
        }
    //----------------//
    default:
        {
        if ds_stack_size(menu_stack) > 0
            {
            var current_menu = ds_stack_pop(menu_stack)
            var menu_name = ds_map_find_value(menu_names_to_string,current_menu)
            console("Escaping menu: " + menu_name)
            }
        else
            {
            var quit_menu = ds_map_find_value(menu_names_to_list,"quit_menu")
            ds_stack_push(menu_stack,quit_menu)
            }
        exit
        }
    //----------------//
    }
