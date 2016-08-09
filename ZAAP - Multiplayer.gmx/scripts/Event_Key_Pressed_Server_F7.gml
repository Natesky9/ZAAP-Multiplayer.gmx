if Action == input_action.null
    {//if it is not selected, select it
    //F7 has no action
    exit
    }
        
if Action == input_action.view
    {
    show_vortex = !show_vortex
    console("Toggled showing vortexes")
    exit
    }

if Action == input_action.create
    {
    Action_Selection = entity.vortex
    console("Vortexes WIP")
    exit
    }

if Action == input_action.delete
    {
    Action_Selection = entity.vortex
    console("NYI")
    exit
    }
