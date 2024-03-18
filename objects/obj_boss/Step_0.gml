//collisions
if place_meeting(x,y,obj_barrier)
{
	direction = -direction;
}

else
{
	direction = direction;
}

//boss loses 1 hp if it gets hit and a vfx plays
if (place_meeting(x,y,obj_magibullet) && !invicible)
{
	show_debug_message("hp now 1");
	hp -= 1;
	invicible = true;
	sprite_index = BossHit;
}


//dies it hits 0
if hp = 0
{
	show_debug_message("DEAD");
	instance_destroy(obj_boss);
}

//cooldown timer so player cannot spam attacks and get consecutive hits on it
if (invicible)
{
	invicible_timer++;
	if (invicible_timer > invicible_duration)
	{
		invicible = false;
		invicible_timer = 0;
	}
}