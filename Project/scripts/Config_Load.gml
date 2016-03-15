if !file_exists("Config.ini")
    {
    console("Config file not found!")
    Config_Generate()
    }
else
    {
    console("Loading Buttons")
    ini_open("Config.ini")
    var i = 0
    while ini_key_exists("menu","Menu number " + string(i))
        {
        show(string(i))
        var get_menu = ini_read_string("menu","Menu number " + string(i),false);
        show("Get_menu " + get_menu)
        menu_create(get_menu)
        ini_close()
        show(get_menu)
        //Load buttons(string)
        Load_Buttons(get_menu)
        ini_open("Config.ini")
        i += 1;
        }
    ini_close()
    console("Buttons Loaded!")
    }
