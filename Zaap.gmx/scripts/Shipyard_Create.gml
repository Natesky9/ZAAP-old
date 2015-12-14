



//create the shipyard surface
shipyard_surface = surface_create(shipyard_width,shipyard_height)
surface_set_target(shipyard_surface)
    {
    //whole surface black
    draw_set_color(c_black)
    draw_rectangle(0,0,shipyard_width,shipyard_height,false)
    //smx is the shipyard max size, used only for drawing construction lines
    smx = max(shipyard_width,shipyard_height)/16
    
    for (i = 0;i <= smx;i += 1)
        {
        draw_set_color(make_color_rgb(255,140,0))
        draw_triangle(i*32,0,i*32+16,0,0,i*32,false)
        draw_set_color(make_color_rgb(255,100,0))
        draw_triangle(0,i*32,0,i*32+16,i*32+16,0,false)
        }
        draw_set_color(c_white)
    draw_rectangle(16,16,shipyard_width-16,shipyard_height-16,false)
    }
surface_reset_target()
//make the sprite
shipyard_sprite = sprite_create_from_surface(
                shipyard_surface,0,0,shipyard_width,shipyard_height
                ,0,0,shipyard_width/2,shipyard_height/2)
//set the mask
mask_index = shipyard_sprite

