//set the nearest shipyard
nearest = instance_nearest(x,y,Shipyard)
nearest_dist = point_distance(x,y,nearest.x,nearest.y)

//---------------//
if status == "docked"
    {
    speed = 0
    }
//---------------//
if status == "undocking"
    {
    if phase == 1
        {
        direction = 90
        Ship_Accelerate(1,mouse_x,mouse_y)
        }
    if nearest_dist > nearest.shipyard_height
        {
        status = "free"
        phase = 1
        }
    }
//---------------//
if status == "docking"
    {
    if phase == 1
        {//move to the dock zone
        Ship_Accelerate(1,nearest.x,nearest.y+nearest.shipyard_height)
        //orient
        dir = point_direction(x,y,nearest.x,nearest.y+nearest.shipyard_height)
        Ship_Orient(dir)
        if point_distance(x,y,nearest.x,nearest.y+nearest.shipyard_height) < 1
            {//if it reaches the dock zone
            x = nearest.x
            y = nearest.y+nearest.shipyard_height
            status = "docking"
            phase = 2
            speed = 0
            }
        }
    if phase == 2
        {//rotate to the dock zone
        Ship_Orient(90)
        if abs(direction-90) < 1
            {//if it's oriented properly
            direction = 90
            phase = 3
            }
        }    
    
    if phase == 3
        {//dock
        
        Ship_Accelerate(1,x,nearest.y)
        dir = 90
        Ship_Orient(dir)
        if round(x) == nearest.x && round(y) == nearest.y
            {//if it succesfully docks
            x = nearest.x
            y = nearest.y
            status = "docked"
            phase = 1
            audio_play_sound(dock,1,false)
            nearest.target = id
//zoom to the largest, station width or height
//            global.zoom = max(nearest.shipyard_width,nearest.shipyard_height)
            
            }
        }
    }
//---------------//
if status == "free"
    {//move towards the mouse
    Ship_Orient(point_direction(x,y,mouse_x,mouse_y))
    Ship_Accelerate(1,mouse_x,mouse_y)
    }
