surface_set_target(shipyard_surface)
    {
    
    //whole surface black
    draw_set_color(c_black)
    draw_rectangle(0,0,shipyard_width,shipyard_height,false)
    //smx is the shipyard max size, used only for drawing construction lines
    smx = max(shipyard_width,shipyard_height)/16
    //t is the animation time
    t = ((lifetime/4) mod 32)
    
    for (i = -1;i <= smx;i += 1)
        {
        draw_set_color(make_color_rgb(255,140,0))
        draw_triangle(i*32-1+t,0,i*32+15+t,0,0,i*32-1+t,false)
        draw_set_color(make_color_rgb(255,100,0))
        draw_triangle(0,i*32-1+t,0,i*32+15+t,i*32+15+t,0,false)
        }
        draw_set_color(c_gray)
    draw_rectangle(16,16,shipyard_width-16,shipyard_height-16,false)
    }
surface_reset_target()
