if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.create
    exit
    }
    
if Action == input_action.view
    {
    show_object = !show_object
    console("Toggled showing objects")
    exit
    }    
    
if Action == input_action.create
    {
    Action_Selection = entity.object
    console("Objects NYI")
    exit
    }



if Action == input_action.delete
    {
    Action_Selection = entity.object
    console("NYI")
    exit
    }
