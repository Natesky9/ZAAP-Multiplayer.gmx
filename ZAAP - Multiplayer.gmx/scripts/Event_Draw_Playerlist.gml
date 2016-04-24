
if keyboard_check(192)
or point_in_rectangle(mouse_x,mouse_y,
panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2)
    {
    panel_playerlist_extended()
    }
else
    {
    panel_playerlist_retracted()
    }
draw_set_halign(fa_top)
draw_text(256,32,"You are Player[" + string(SSS) + "]")
