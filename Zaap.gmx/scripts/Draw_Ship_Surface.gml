//draw surface


//set the target to ship_surface
surface_set_target(ship_surface)
    {
    //clear the previous
    draw_clear_alpha(c_white,0)
    for (iy = 0; iy <= ship_w+1; iy += 1)
        {
        for (ix = 0; ix <= ship_w+1; ix +=1)
            {//loop through every part
            draw_set_alpha(255)
            if ship_array[ix,iy] != -1
                {
                draw_set_color(global.part[ship_array[ix,iy],0])
                }
            else
                {//draw a clear part
                draw_set_alpha(0)
                draw_set_color(c_white)
                }
                //draw the rectangle with the chosen color
                draw_rectangle((ix*16),(iy*16),(ix*16)+15,(iy*16)+15,false)
            }
        }
    draw_set_color(c_black)
    draw_set_alpha(255)
    draw_rectangle(15,15,ship_width+15,ship_height+15,true)
    }
surface_reset_target()
//reset drawing
draw_set_color(c_white)
draw_set_alpha(255)


