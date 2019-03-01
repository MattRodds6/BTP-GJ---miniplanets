/// @description Insert description here
// You can write your code in this editor
if((x >= camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])) || 
	(x < camera_get_view_x(view_camera[0])) || (y < camera_get_view_y(view_camera[0])) ||
	(y >= camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])))
{
	instance_destroy();
}
