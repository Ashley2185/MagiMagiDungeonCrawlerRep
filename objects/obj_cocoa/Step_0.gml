//MOVEMENT
//can move up until it hits wall
if (keyboard_check(ord("W")) && !place_meeting(x,y-8,obj_barrier))
{
	y -= cocoa_speed;
}

else
{
	sprite_index = Cocoa;
}


//can move down until it hits wall
if (keyboard_check(ord("S")) && !place_meeting(x,y+8,obj_barrier))
{
	y += cocoa_speed;
}

//player can move right until it hits wall; image is also mirrored to reflect direction she is facing
if (keyboard_check(ord("D")) && !place_meeting(x+20,y,obj_barrier))
{
	x += cocoa_speed;
	image_xscale = 1;
	image_yscale = 1;
}

//player can move left until it hits wall; image is also mirrored to reflect direction she is facing
if (keyboard_check(ord("A")) && !place_meeting(x-20,y,obj_barrier))
{
	x -= cocoa_speed;
	image_xscale = -1;
	image_yscale = 1;	
}


//ATTACKING
//fire!
if mouse_check_button_pressed(mb_left)
{
	show_debug_message("Fire!")
	
	var magibullet = instance_create_depth(obj_wand.x,obj_wand.y,depth-1,obj_magibullet);
	magibullet.speed = 12;
	magibullet.direction = point_direction(obj_cocoa.x,obj_cocoa.y,mouse_x,mouse_y);
	magibullet.image_angle =magibullet.direction;
	
	audio_play_sound(magicast,3,false);
}

//HURT AND LOSE CONDITION
if (place_meeting(x,y,obj_beam) && !invicible)
{
	show_debug_message("Hit!");
	cocoa_hp -= 1;
	invicible = true;
	sprite_index = CocoaHit;
	audio_play_sound(cocoa_hit,3,false);
}


if (place_meeting(x,y,obj_layser) && !invicible)
{
	show_debug_message("Hit by layser!");
	cocoa_hp -= 1;
	invicible = true;
	sprite_index = CocoaHit;
	audio_play_sound(cocoa_hit,3,false);
}


if (place_meeting(x,y,obj_henchmen) && !invicible)
{
	show_debug_message("Hit by hench!");
	cocoa_hp -= .5;
	invicible = true;
	sprite_index = CocoaHit;
	audio_play_sound(cocoa_hit,3,false);
}


//cooldown
if (invicible)
{
	invicible_timer++;
	if (invicible_timer > invicible_duration)
	{
		invicible = false;
		invicible_timer = 0;
	}
}

//meters going down as you lose hp
if cocoa_hp = 4
{
	instance_destroy(obj_chp5)
}

if cocoa_hp = 3
{
	instance_destroy(obj_chp4)
}

if cocoa_hp = 2
{
	instance_destroy(obj_chp3)
}

if cocoa_hp = 1
{
	instance_destroy(obj_chp2)
}

if cocoa_hp = 0
{
	instance_destroy(obj_chp1)
	show_debug_message("dead")
	room_goto(GameOver)
}









