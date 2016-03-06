var get_button = argument0
var get_do = ds_map_find_value(get_button,"function")

switch get_do
    {
    case "Quit":
        {
        play(bong)
        game_end()
        exit;
        }
    case "Restart":
        {
        play(ding)
        game_restart()
        exit;
        }
    case "Host":
        {
        show_debug_message("Creating Server")
        mode = "Host"
        exit;
        }
    case "Client":
        {
        show_debug_message("Loading Client")
        mode = "Client"
        exit;
        }
    }
show_debug_message("This button doesn't do anything!")
