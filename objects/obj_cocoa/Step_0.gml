//can move up until it hits wall
if (keyboard_check(ord("W")) && !place_meeting(x,y-8,obj_barrier))
{
	y -= cocoa_speed;
	
}

//can move down until it hits wall
if (keyboard_check(ord("S")) && !place_meeting(x,y+8,obj_barrier))
{
	y += cocoa_speed;
	
}


//player can move right until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("D")) && !place_meeting(x+8,y,obj_barrier))
{
	x += cocoa_speed;
	image_xscale = 1;
	image_yscale = 1;
}

//player can move left until it hits wall; image is also mirrored to reflect direction he is facing
if (keyboard_check(ord("A")) && !place_meeting(x-8,y,obj_barrier))
{
	x -= cocoa_speed;
	image_xscale = -1;
	image_yscale = 1;
}


//fire!
if mouse_check_button_pressed(mb_left)
{
	show_debug_message("Fire!")
	
	var magibullet = instance_create_depth(obj_wand.x,obj_wand.y,depth-1,obj_magibullet);
	magibullet.speed = 12;
	magibullet.direction = point_direction(obj_cocoa.x,obj_cocoa.y,mouse_x,mouse_y);
	magibullet.image_angle =magibullet.direction;
}






