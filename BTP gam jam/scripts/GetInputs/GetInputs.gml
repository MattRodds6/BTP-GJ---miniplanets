/// @desc get_inputs

//movment
moveUp = keyboard_check(ord("W"));
moveDown = keyboard_check(ord("S"));
moveLeft = keyboard_check(ord("A"));
moveRight = keyboard_check(ord("D"));

//attacking
light = mouse_check_button_released(mb_left);