//collisions
if place_meeting(x,y,obj_barrier)
{
	direction = -direction;
}

else
{
	direction = direction;
}


if (place_meeting(x,y,obj_magibullet) && !invicible)
{
	show_debug_message("Boss Dmg");
	hp -= 1;
	invicible = true;
	sprite_index = BossHit;
	audio_play_sound(bosshitsound,3,false);
}

//dies if it gets hit
if hp = 0
{
	show_debug_message("DEAD");
	instance_destroy(obj_bossphase2);
	room_goto(Phase3);
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

