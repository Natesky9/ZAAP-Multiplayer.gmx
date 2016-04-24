//draw the engine when the game is not in focus
//----------------------------------------------------------------//

text = pause_menu

text_width = string_width(text)
text_height = string_height(text)
x1 = room_width/2 - text_width
x2 = room_width/2 + text_width
y1 = room_height/2 - text_height
y2 = room_height/2 + text_height
draw_set_color(c_black)
draw_rectangle(x1,y1,x2,y2,false)

draw_set_color(c_blue)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(room_width/2,room_height/2,text)
