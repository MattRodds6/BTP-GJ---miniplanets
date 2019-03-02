/// @description Insert description here
// You can write your code in this editor
if(hp <= 0)
{
	x = -sprite_width;
	y = -sprite_height;
	alarm[1] = 10;
}

playerInCircle = collision_circle(self.x, self.y, detectionRad, playerObj, 6, true);

if(playerInCircle != noone)
{
	image_angle = point_direction(self.x, self.y, playerInCircle.x, playerInCircle.y);
	speed = spd;
	direction = image_angle;
}
else
{
	speed = irandom_range(0, spd);
	direction = irandom_range(0, 359);
}

