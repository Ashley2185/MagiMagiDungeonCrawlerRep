//change rooms to mimic phase changes, phase 2 is bullets come faster and obstabcles spawn, stage 3 is even faster bullets and 3 enemy minions coming to get you

//invincibility timers
invicible = false;
invicible_timer = 0;
invicible_duration = 80;


//enemy speed
boss_speed = 20;

//enemy moves after 120 steps
alarm[0] = 20;
alarm[2] = 60;
alarm[4] = 20;


//enemy health
hp = 20;

//phase one theme
audio_stop_sound(phasetwo);
audio_play_sound(phasethree,2,false);




