var beam = instance_create_depth(obj_bossphase3.x,obj_bossphase3.y,depth-1,obj_beam);
beam.speed = 15;
beam.direction = point_direction(obj_bossphase3.x,obj_bossphase3.y,obj_cocoa.x,obj_cocoa.y);
beam.image_angle =beam.direction;

alarm[5] = 20;

audio_play_sound(bosscast,2,false);







