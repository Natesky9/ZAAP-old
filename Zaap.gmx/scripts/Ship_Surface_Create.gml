//Create the ship surface
//ship_array[] is the ship's array for storing the tiles
ship_w = 5
ship_h = 5
ship_width = ship_w*16
ship_height = ship_h*16



for (j = 0; j <= ship_h+1; j+= 1)
    {
    for (i = 0; i <= ship_w+1; i+= 1)
        {
        ship_array[i,j] = -1
        }    
    }
ship_array[3,3] = 4
ship_array[2,3] = 2
ship_array[4,3] = 2
ship_array[3,1] = 2
ship_array[3,2] = 1
ship_array[2,2] = 1
ship_array[4,2] = 1
ship_array[2,4] = 3
ship_array[4,4] = 3

ship_surface = surface_create(ship_width+32,ship_height+32)
