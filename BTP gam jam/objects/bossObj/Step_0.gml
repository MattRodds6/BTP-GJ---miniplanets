/// @description Insert description here
// You can write your code in this editor

if(hp <= 0)
{	
	instance_destroy();
}
player = collision_circle(x,y,128 * size, playerObj, 16, true);

if(player != noone)
{
	direction = point_direction(self.x, self.y, player.x, player.y);
	speed = spd;
}
else
{
	speed = random(spd);
	direction += irandom_range(-5, 5);
}

if(size >= 6)
{
	SpawnEnemy(4, x, y);
	size--;
}
