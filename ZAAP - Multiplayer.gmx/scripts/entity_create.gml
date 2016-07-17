var type = argument[0]

switch type
    {
//----------------------------------------------------------------//
    case entity.asteroid:
        {
        return Event_Create_Entity_Asteroid(argument[1],argument[2])
        }
//----------------------------------------------------------------//
    case entity.ship:
        {
        return Event_Create_Entity_Ship(argument[1],argument[2])
        }
//----------------------------------------------------------------//
    case entity.vortex:
        {
        return Event_Create_Entity_Vortex(argument[1],argument[2])
        }
//----------------------------------------------------------------//
    default:
        {
        show("Error! This entity does not have an entity_create entry!")
        exit
        }
    
    }
