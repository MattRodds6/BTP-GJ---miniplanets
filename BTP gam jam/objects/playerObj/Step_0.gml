/// @description Insert description here
// You can write your code in this editor
GetInputs();

mouseDir = point_direction(x, y , mouse_x, mouse_y);
moveDir = arctan2((mouse_y-y), (mouse_x-x));

dy = moveDown - moveUp;
dx = moveRight - moveLeft;

if(light)
{
	with(instance_create_layer(x + (23*dcos(image_angle)),y + (-23*dsin(image_angle)),"bulletLayer",bulletObj))
	{
		sprite_index = energySpr;
				image_blend = make_color_rgb(255, 0,0);
		hspeed = spd * dcos(-other.mouseDir);
		vspeed = spd * dsin(-other.mouseDir);
		image_angle = point_direction(x, y , mouse_x, mouse_y);
	}
}

if(heavy && SPIRIT > 0)
{
	with(instance_create_layer(x + (23*dcos(image_angle)),y + (-23*dsin(image_angle)),"bulletLayer",bulletObj))
	{
		sprite_index = energySpr;
		SPIRIT--;
		add = true;
		hspeed = spd * dcos(-other.mouseDir);
		vspeed = spd * dsin(-other.mouseDir);
		image_angle = point_direction(x, y , mouse_x, mouse_y);
	}
}

hspd = dx * spd;
vspd = dy * spd;

PlayerCollision();

image_angle = mouseDir;

	