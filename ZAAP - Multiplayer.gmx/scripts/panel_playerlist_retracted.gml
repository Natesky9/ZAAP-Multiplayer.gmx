var players = ds_list_size(playerlist)

panel_playerlist_x1 = view_xview[0]
panel_playerlist_y1 = view_yview[0]
panel_playerlist_x2 = view_xview[0]+64
panel_playerlist_y2 = view_yview[0]+64

draw_set_color(c_teal)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,false)
draw_set_color(c_black)
draw_rectangle(panel_playerlist_x1,panel_playerlist_y1,
panel_playerlist_x2,panel_playerlist_y2,true)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(panel_playerlist_x1+32,panel_playerlist_y1+16,"~")
var text = "[" + string(players) + "]#Players"
draw_text(panel_playerlist_x1+32,panel_playerlist_y1+48,text)
