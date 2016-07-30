var get_sketch = argument0
var x1 = ds_map_find_value(get_sketch,"x1")
var y1 = ds_map_find_value(get_sketch,"y1")
var x2 = ds_map_find_value(get_sketch,"x2")
var y2 = ds_map_find_value(get_sketch,"y2")

var lifetime = ds_map_find_value(get_sketch,"lifetime")
var timer = ds_map_find_value(get_sketch,"timer")
var color = c_red
//draw the dern thing

draw_set_alpha(timer/lifetime)
draw_set_color(color)
draw_line(x1,y1,x2,y2)
draw_set_alpha(1)

ds_map_replace(get_sketch,"timer",timer-1)

if timer <= 0
    {
    destroy_map(get_sketch)
    var pos = ds_list_find_index(sketch_list,get_sketch)
    ds_list_delete(sketch_list,pos)
    }
