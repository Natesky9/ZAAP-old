surface_set_target(shipyard_surface)
    {
    //background
    draw_set_color(c_black)
    draw_rectangle(0,0,shipyard_width,shipyard_height,false)
    

    
    //smx is the shipyard max size, used only for drawing construction lines
    smx = max(shipyard_width,shipyard_height)/16
    //t is the animation time
    t = ((lifetime/4) mod 32)
    
    for (i = -1;i <= smx;i += 1)
        {//draw the construction lines
        draw_set_color(make_color_rgb(255,140,0))
        draw_triangle(i*32-1+t,0,i*32+15+t,0,0,i*32-1+t,false)
        draw_set_color(make_color_rgb(255,100,0))
        draw_triangle(0,i*32-1+t,0,i*32+15+t,i*32+15+t,0,false)
        }
    //draw the ship zone. Makes an inner box
    draw_set_color(c_gray)
    draw_rectangle(16,16,shipyard_width-16,shipyard_height-16,false)
//--------------------------------//
if target != 0
draw_surface(target.ship_surface,0,0)
    
//----------------------------------------//
    //draw the shipyard construction arms
    draw_set_color(c_red)
    //vertical arm
    draw_line(shipyard_xarm,0,shipyard_xarm,shipyard_height)
    draw_line(0,shipyard_yarm,shipyard_width,shipyard_yarm)
    draw_rectangle(shipyard_x1 + shipyard_xarm-4,shipyard_y1 + shipyard_yarm-4,
                shipyard_x1 + shipyard_xarm+4,shipyard_y1 + shipyard_yarm+4,true)


    }
surface_reset_target()
