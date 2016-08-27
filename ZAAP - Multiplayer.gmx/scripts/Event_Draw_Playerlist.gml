
if keyboard_check(ord('~'))
or point_in_rectangle(window_mouse_get_x(),window_mouse_get_y(),
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
if SSS != -1
var text = "You are Player[" + string(SSS) + "]"
if SSS == -1
var text = "You are Host"

draw_text(256,64+16,text)

