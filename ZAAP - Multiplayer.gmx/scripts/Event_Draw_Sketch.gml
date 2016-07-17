//draw all sketches

var size = ds_list_size(sketch_list)
for (var i = size-1; i >= 0; i -= 1)
    {
    var get_sketch = ds_list_find_value(sketch_list,i)
    var get_type = ds_map_find_value(get_sketch,"type")
    
    switch get_type
        {
        //----------------//
        case sketch.warp_trail:
            {
            Event_Draw_Sketch_Warp(get_sketch)
            break
            }
        //----------------//
        default:
            {
            console("Error, unknown sketch @Event_Draw_Sketch")
            break
            }
        //----------------//
        }
    }
