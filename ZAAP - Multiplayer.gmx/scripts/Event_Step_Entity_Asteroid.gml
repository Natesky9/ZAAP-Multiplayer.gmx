var get_step_entity = argument0

Asteroid_Gravity(get_step_entity)

Event_Step_Entity_Motion(get_step_entity)



is_orbiting = false

Asteroid_Orbit(get_step_entity)


if !is_orbiting
    {
    ds_map_replace(get_step_entity,"primary",0)
    ds_map_replace(get_step_entity,"argument",0)
    ds_map_replace(get_step_entity,"apoapsis",0)
    ds_map_replace(get_step_entity,"periapsis",0)
    }
