
//main loop
for (iy = 1;iy <= ship_height;iy += 1)
    {
    for (ix = 1;ix <= ship_width;iy += 1)
        {
        //-------------------------------------//
        for (i = 0;i <= global.part_max;i += 1)
            {//initialize all counts to 0
            count[i] = 0
            }
        //count[0] is the count of all parts
        //count[1-global.part_max] is the count of that part
        
        count[0] += 1
        //-------------------------------------//
        }
    }
//end main loop

//------------------------//
//old code
/*
for (i = 1;Weapon[i,3] != "";i+=1)
    {
    Weapon[BlueTotal+1,1] = 0
    Weapon[BlueTotal+1,2] = 0
    Weapon[BlueTotal+1,3] = ""
    Weapon[BlueTotal+1,4] = 0
    }


TotalCount = 0
RedTotal = 0
RedCount = 0
GreenTotal = 0
GreenCount = 0
BlueCount = 0
BlueTotal = 0
YellowCount = 0
YellowTotal = 0

//loop through the Ship
for (ix = 1; ix < ship_width+1; ix += 1)
    {
    for (iy = 1; iy < ship_height+1; iy += 1)
        {//Checks go here
        if Ship[ix,iy] != -1
        TotalCount +=1
              
        switch Ship[ix,iy]
            {
            case -1:
                {
                break
                }
            case 1:
                {
                RedCount +=1
                RedTotal +=1
                
                if Ship[ix+1,iy] == 1
                RedTotal +=1
                if Ship[ix,iy+1] == 1
                RedTotal +=1
                if Ship[ix-1,iy] == 1
                RedTotal +=1
                if Ship[ix,iy-1] == 1
                RedTotal +=1
                
                break
                }
            case 2:
                {
                GreenTotal +=1
                GreenCount +=1
                break
                }
            case 3:
                {
                //Title the weapon into array
                BlueTotal +=1
                Weapon[BlueTotal,1] = ix
                Weapon[BlueTotal,2] = iy
                //name//
                Weapon[BlueTotal,3] = "Gun"
                //distance//
                Weapon[BlueTotal,4] = point_distance(ship_width/2+.5,ship_height/2+.5,ix,iy)
                //angle//
                Weapon[BlueTotal,5] = (360-point_direction(ship_width/2+.5,ship_height/2+.5,ix,iy)) mod 360
                //fire rate//
                Weapon[BlueTotal,6] = 60 / (1+Count_adjacent(ix,iy,2))
                //charge//
                Weapon[BlueTotal,7] = 0

                //Add a blank to stop loops
                Weapon[BlueTotal+1,1] = 0
                Weapon[BlueTotal+1,2] = 0
                Weapon[BlueTotal+1,3] = ""
                Weapon[BlueTotal+1,4] = 0
                Weapon[BlueTotal+1,5] = 0
                Weapon[BlueTotal+1,6] = 0
                Weapon[BlueTotal+1,7] = 0
                
                break
                }
            case 4:
                {
                //Propulsion
                YellowTotal +=1
                YellowCount +=1
                break
                }
            
            }       
        }
    }
*/
