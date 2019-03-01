/// @description Insert description here
// You can write your code in this editor
GetInputs();

mouseDir = point_direction(x, y , mouse_x, mouse_y);
moveDir = arctan2((mouse_y-y), (mouse_x-x));

dy = moveDown - moveUp;
dx = moveRight - moveLeft;

if(light)
{
	with(instance_create_layer(x,y,"bulletLayer",bulletObj))
	{
		sprite_index = energySpr;
		hspeed = spd * dcos(-other.mouseDir);
		vspeed = spd * dsin(-other.mouseDir);
		image_angle = point_direction(x, y , mouse_x, mouse_y);
	}
	
	
}

hspd = dx * spd;
vspd = dy * spd;

PlayerCollision();

image_angle = mouseDir;

	