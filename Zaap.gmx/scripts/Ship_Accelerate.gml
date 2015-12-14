//this is the acceleration rate
ship_speed = argument0
//these are the coords
ship_targetx = argument1
ship_targety = argument2

ship_maxspeed = 16

ship_target_dist = point_distance(x,y,ship_targetx,ship_targety)/8

speed = min(speed + ship_speed,ship_target_dist)


//cap the speed
speed = min(speed,ship_maxspeed)
