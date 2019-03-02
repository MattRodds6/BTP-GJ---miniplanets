/// @description Insert description here
// You can write your code in this editor
player		   = instance_get(playerObj, 1);
otherObj	   = instance_find(bossObj, 1);

if(otherObj != noone && player != noone)
{
	dirToOther = point_direction(x, y, otherObj.x, otherObj.y);

	x = player.x + sqr(distFromPlayer*dcos(dirToOther));
	y = player.y + sqr(distFromPlayer*dsin(dirToOther));

	image_angle = dirToOther;
}