/// @description Insert description here
// You can write your code in this editor

// gets all objs inside the gravitaional field
objsInCircle = collision_circle_list(self.x, self.y, gravRadius, enemyObj, true, true, objList, true);
playerInCircle = collision_circle(self.x, self.y, gravRadius, playerObj, false, true);

GravityScr(playerInCircle, grav, gravMax);

if(objsInCircle > 0)
{
	if(i >= objsInCircle)
	{
		i = 0;
	}

	GravityScr(objList[| i], grav, gravMax);
	i++;
}

if(size <= 0)
{
	instance_destroy();
}
	
					  

					   

					   