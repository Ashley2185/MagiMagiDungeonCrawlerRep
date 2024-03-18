var beam = instance_create_depth(obj_boss.x,obj_boss.y,depth-1,obj_beam);
beam.speed = 12;
beam.direction = point_direction(obj_boss.x,obj_boss.y,obj_cocoa.x,obj_cocoa.y);
beam.image_angle =beam.direction;

alarm[5] = 20;







