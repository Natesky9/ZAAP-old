if mouse_x > target.ship_x1 && mouse_x < target.ship_x2
&& mouse_y > target.ship_y1 && mouse_x < target.ship_y2
    {//if it's inside the ship's bounding box
    global.ix = 2+floor((mouse_x - target.ship_x1)/16-1)
    global.iy = 2+floor((mouse_y - target.ship_y1)/16-1)
    if target.ship_array[global.ix,global.iy] == -1
        {
        return false
        }
    return true
    }
