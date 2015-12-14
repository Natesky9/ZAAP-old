ship_target_direction = argument0
//target is the required direction
direction -= ((direction - ship_target_direction + 540) mod 360 -180)/8
//step towards the target direction
if abs(ship_target_direction-direction) <1
    {//if you're close enough, fit exactly
    direction = ship_target_direction
    }

