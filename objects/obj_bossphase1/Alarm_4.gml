var beam = instance_create_depth(obj_bossphase1.x,obj_bossphase1.y,depth-1,obj_beam);
beam.speed = 10;
beam.direction = point_direction(obj_bossphase1.x,obj_bossphase1.y,obj_cocoa.x,obj_cocoa.y);
beam.image_angle =beam.direction;

alarm[5] = 20;

audio_play_sound(bosscast,2,false);







