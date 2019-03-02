/// @function GravityScr(id  , real, real);
/// @description This will create a gravitaional field when an object enters the collision  box.
/// @param {real} instance_id - The unique instance ID value of the instance to check.
/// @param {real} gravity	  - value of the gravity to be used.
/// @param {real} maxSpeed	  - value of the max speed of the gravitational pull;
 
var arg0	= argument0;
var grav	= argument1;
var gravMax = argument2;


if(arg0 != noone)
{
	arg0.alarm[0] = 5;	
	
	var gravDirection = arctan2((self.x - arg0.x), (self.y - arg0.y));
			
	if (hspeed <= gravMax || vspeed <= gravMax)
	{
		arg0.hspeed += grav*sin(gravDirection);
		arg0.vspeed += grav*cos(gravDirection);
	}
}

