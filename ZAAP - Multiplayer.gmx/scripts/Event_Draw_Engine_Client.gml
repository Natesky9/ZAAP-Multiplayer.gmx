if Ping != -1
    {
    draw_set_halign(fa_center)
    draw_set_valign(fa_top)
    draw_set_color(c_blue)
    draw_text(view_xview[0] + room_width/2,view_yview[0],
        "Ping: " + string(Ping))
    }
