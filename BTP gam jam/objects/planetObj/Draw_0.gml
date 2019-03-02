/// @description Insert description here
// You can write your code in this editor

// draw the gravitational field
draw_circle_color(self.x, self.y, image_xscale/2 + gravRadius, c_black, c_dkgray, true);
draw_set_circle_precision(16);
draw_self();
