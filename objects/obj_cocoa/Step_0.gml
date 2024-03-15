//can move up until it hits wall
if (keyboard_check(ord("W")))
{
	y -= cocoa_speed;
	
}

//can move down until it hits wall
if (keyboard_check(ord("S")))
{
	y += cocoa_speed;
	
}


//player can move right until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("D")))
{
	x += cocoa_speed;
	image_xscale = 1;
	image_yscale = 1;
}

//player can move left until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("A")))
{
	x -= cocoa_speed;
	image_xscale = -1;
	image_yscale = 1;
}

//jump!


//fire!
if (keyboard_check_pressed(vk_space))
{
	show_debug_message("Fire!")
	
	
	//var bullet = instance_create_depth(obj_cocoa.x,obj_cocoa.y,depth-1,obj_iceshard);
//	bullet.speed = 8;
	//bullet.direction = point_direction(obj_cocoa.x,obj_cocoa.y,mouse_x,mouse_y);
	//bullet.image_angle = bullet.direction;
}






