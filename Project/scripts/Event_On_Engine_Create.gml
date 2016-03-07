//Host object's create event
mode = "Menu"
button_left_pressed = -1
button_right_pressed = -1

buttons = ds_list_create()


if !file_exists("Menu_Buttons.ini")
    {
    Menu_Button_1()
    Menu_Button_2()
    Menu_Button_3()
    Menu_Button_4()
    Menu_Button_5()
    Menu_Button_6()
    Save_Buttons()
    Save_Buttons()
    }
else
    {
    Load_Buttons()
    }
