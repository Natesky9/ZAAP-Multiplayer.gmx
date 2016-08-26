var type = argument[0]

switch type
    {
//----------------------------------------------------------------//
    case entity.projectile:
        {return Event_Create_Entity_Projectile()}
//----------------------------------------------------------------//
    case entity.object:
        {return Event_Create_Entity_Object()}
//----------------------------------------------------------------//
    case entity.asteroid:
        {return Event_Create_Entity_Asteroid()}
//----------------------------------------------------------------//
    case entity.ship:
        {return Event_Create_Entity_Ship()}
//----------------------------------------------------------------//
    case entity.station:
        {return Event_Create_Entity_Station()}
//----------------------------------------------------------------//
    case entity.star:
        {return Event_Create_Entity_Star()}
//----------------------------------------------------------------//
    case entity.vortex:
        {return Event_Create_Entity_Vortex()}
//----------------------------------------------------------------//
    default:
        {
        show("Error! This entity does not have an entity_create entry!")
        exit
        }
    
    }
