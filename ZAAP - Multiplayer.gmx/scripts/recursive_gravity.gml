var get_entity = argument0;

//early exit
if !ds_exists(get_entity,ds_type_map)
exit

var get_x = ds_map_find_value(get_entity,"x");
var get_y = ds_map_find_value(get_entity,"y");
var get_mass = ds_map_find_value(get_entity,"mass")
var satellite_list = ds_map_find_value(get_entity,"satellite_list");

var dist_x
var dist_y

for (var i = 0;i < ds_list_size(satellite_list);i += 1)
    {
    //
    var get_other_entity = ds_list_find_value(satellite_list,i);
    if !is_undefined(get_other_entity) and ds_exists(get_other_entity,ds_type_map)
        {
        var get_other_x = ds_map_find_value(get_other_entity,"x");
        var get_other_y = ds_map_find_value(get_other_entity,"y");
        //       
        //handle gravity here
        var get_vector_magnitude = point_distance(get_x,get_y,get_other_x,get_other_y)
        var get_vector_direction = point_direction(get_x,get_y,get_other_x,get_other_y)+180
        var get_pull = Gravitational_Constant*get_mass/sqr(get_vector_magnitude);
        var vec_x = lengthdir_x(get_pull,get_vector_direction);
        var vec_y = lengthdir_y(get_pull,get_vector_direction);
        
        recursive_sum_x += vec_x;
        recursive_sum_y += vec_y;
        var recursive_magnitude = point_distance(0,0,recursive_sum_x,recursive_sum_y)
        var recursive_direction = point_direction(0,0,recursive_sum_x,recursive_sum_y)
        vector_add(get_other_entity,recursive_magnitude,recursive_direction,true)
        
        var get_other_satellite_list = ds_map_find_value(get_other_entity,"satellite_list")
        if get_other_satellite_list > 0
            {
            //WE NEED TO GO DEEPER
            recursive_gravity(get_other_entity)
            }
        //
        recursive_sum_x -= vec_x
        recursive_sum_y -= vec_y
        }
    //
    if is_undefined(get_other_entity)
        {
        show("Error, entity undefined @recursive_gravity entity: " + string(get_other_entity))
        }
    //
    }
