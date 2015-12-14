//test the mouse against the shipyard elements
//------------------------------------------//
//element 0
if mouse_x > shipyard_x1 && mouse_x < shipyard_x2
&& mouse_y > shipyard_y1 && mouse_y < shipyard_y2
    {//if the mouse is inside the edit zone
    if Part_Get()
        {
        return "element0ship"
        }
    return "element0"
    }
//-------------------------------------------//
//element 1
if mouse_x < shipyard_x1 && mouse_x > shipyard_x1 - element1x
&& mouse_y > shipyard_y1 && mouse_y < shipyard_y2
    {


    for (i = 1;i <=tile_max;i += 1)
        {
        if element1button[i,0]
            {
            if mouse_x > element1button[i,3] && mouse_y > element1button[i,4]
            && mouse_x < element1button[i,5] && mouse_y < element1button[i,6]
                {
                return "element1button" + string(i)
                }
            }
            
        }
    return "element1"
    }
//end element 1
//--------------------------------------//
//element 2
if mouse_x > shipyard_x2 && mouse_x < shipyard_x2 + element2x
&& mouse_y > shipyard_y1 && mouse_y < shipyard_y2
    {
    return "element2"
    }
//end element 2
//--------------------------------------//
//element 3
if mouse_x > shipyard_x1 && mouse_x < shipyard_x2
&& mouse_y < shipyard_y1 && mouse_y > shipyard_y1 - element3y
    {
    return "element3"
    }
//end element 3
//---------------------------------------//
return "None"
