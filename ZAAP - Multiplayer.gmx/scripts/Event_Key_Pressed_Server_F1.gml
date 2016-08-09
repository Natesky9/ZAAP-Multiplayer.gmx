if Action == input_action.null
    {//if it is not selected, select it
    Action = input_action.view
    exit
    }
    
if Action == input_action.view
    {//if it is selected, toggle the sub-action
    show_projectile = !show_projectile
    console("Toggled showing projectiles")
    exit
    }
    
if Action == input_action.create
    {
    Action_Selection = entity.projectile
    console("NYI")
    exit
    }
    


if Action = input_action.delete
    {
    Action_Selection = entity.projectile
    console("NYI")
    exit
    }
