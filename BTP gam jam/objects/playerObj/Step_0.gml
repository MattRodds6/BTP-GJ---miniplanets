/// @description Insert description here
// You can write your code in this editor
GetInputs();

mouseDir = point_direction(x, y , mouse_x, mouse_y);
moveDir = arctan2((mouse_y-y), (mouse_x-x));

dy = moveDown - moveUp;
dx = moveRight - moveLeft;



hspd = dx * spd;
vspd = dy * spd;

PlayerCollision();

image_angle = mouseDir;

	