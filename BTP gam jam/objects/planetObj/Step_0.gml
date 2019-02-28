/// @description Insert description here
// You can write your code in this editor

// gets all objs inside the gravitaional field
playerInCircle = collision_circle(self.x, self.y, gravRadius, playerObj, true, true);
enemiesInCircle = collision_circle_list(self.x, self.y, gravRadius, enemyObj, true, true, objList, true);

if(playerInCircle != noone)
{
	var playerGravDir = arctan2((self.x - playerInCircle.x), (self.y - playerInCircle.y));
	
	playerInCircle.image_angle = point_direction(playerInCircle.x, playerInCircle.y , self.x, self.y) + 90;		
	if (hspeed <= gravMax || vspeed <= gravMax)
	{
		playerInCircle.hspeed += grav*sin(playerGravDir);
		playerInCircle.vspeed += grav*cos(playerGravDir);
	}
	playerInCircle.alarm[0] = 5;
}
					  
//if(objList[| 0] != noone)
//{
//	for(i = 0; i < 
//	var playerGravDir = arctan2((self.x - playerInCircle.x), (self.y - playerInCircle.y));
	
//	playerInCircle.image_angle = point_direction(playerInCircle.x, playerInCircle.y , self.x, self.y) + 90;		
//	if (hspeed <= gravMax || vspeed <= gravMax)
//	{
//		playerInCircle.hspeed += grav*sin(playerGravDir);
//		playerInCircle.vspeed += grav*cos(playerGravDir);
//	}
//}
					  

					   

					   