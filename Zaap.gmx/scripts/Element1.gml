//draw element 1 box
if element1x != 0
    {//if the element is extended
    draw_set_color(c_green)
    draw_rectangle(shipyard_x1,shipyard_y1 + 1,shipyard_x1 - element1x,shipyard_y2,false)
    draw_set_color(c_gray)
    if element1x > 16
        {//draw the inner box 8 pixels smaller
        draw_rectangle(shipyard_x1 - 8,shipyard_y1 + 8,
                    shipyard_x1 - element1x + 8,shipyard_y2 - 8,false)
        }

//update the element spots
    for (iy = 0; iy <= element1yspots-1; iy += 1)
        {//place the button locations
        for (ix = 1; ix <= element1xspots; ix += 1)
            {//orgin is top-left now
            element1position[iy*element1xspots + ix,1] =shipyard_x1 - element1x +ix*24
            element1position[iy*element1xspots + ix,2] =shipyard_y1 + (iy+1)*24
            }
        }

        
    //temp button draw
    for (i = 1; i <= element1spots;i += 1)
        {
        if element1x > element1position[i,1]-shipyard_x1 + element1x +8
            {
            draw_set_color(c_white)
            draw_rectangle(element1position[i,1]-1,element1position[i,2]-1,
                        element1position[i,1]+1,element1position[i,2]+1,false)
            }
        }
    //end temp draw

    //pair the buttons to the spots
    for (i = 1;i <= tile_max; i += 1)
        {
        q = 1
        p = 1
        while (q <= tile_max) && (p <= element1spots)
            {
            if element1button[q,0]
                {
                element1button[q,1] = element1position[p,1]
                element1button[q,2] = element1position[p,2]
                p += 1
                }
            q += 1
            }

    

        }
    }
    
for (i = 1;i <= tile_max;i += 1)
    {
    if element1button[i,0]
        {
        if element1x > element1button[i,1]-shipyard_x1 + element1x
            {
            //make the square        
            element1button[i,3] = element1button[i,1] - 8
            element1button[i,4] = element1button[i,2] - 8
            element1button[i,5] = min(element1button[i,1] + 8,shipyard_x1-8)
            element1button[i,6] = element1button[i,2] + 8
            //draw the square
            draw_set_color(global.part[i,0])
            draw_rectangle(element1button[i,3],element1button[i,4],
                        element1button[i,5],element1button[i,6],false)
            }
        }
    }
