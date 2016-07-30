new_sketch = create_map()
ds_list_add(sketch_list,new_sketch)
//console("created sketch")
var type = argument[0]

ds_map_add(new_sketch,"type",type)
switch type
    {
    //----------------//
    case sketch.warp_trail:
        {
        var x1 = argument[1]
        var y1 = argument[2]
        var x2 = argument[3]
        var y2 = argument[4]
        
        ds_map_add(new_sketch,"x1",x1)
        ds_map_add(new_sketch,"y1",y1)
        ds_map_add(new_sketch,"x2",x2)
        ds_map_add(new_sketch,"y2",y2)
        
        ds_map_add(new_sketch,"lifetime",120)
        ds_map_add(new_sketch,"timer",120)
        exit
        }
    //----------------//
    default:
        {
        console("Error, sketch not defined @create_sketch")
        //delete and remove
        destroy_map(new_sketch)
        var pos = ds_list_find_index(sketch_list,new_sketch)
        ds_list_delete(sketch_list,pos)
        exit
        }
    }
