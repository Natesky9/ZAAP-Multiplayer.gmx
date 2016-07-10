
if keyboard_check(ord('~'))
or point_in_rectangle(mouse_x,mouse_y,
view_xview[0]+panel_playerlist_x1,view_yview[0]+panel_playerlist_y1,
view_xview[0]+panel_playerlist_x2,view_yview[0]+panel_playerlist_y2)
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

draw_text(view_xview[0]+256,view_yview[0]+32,text)

