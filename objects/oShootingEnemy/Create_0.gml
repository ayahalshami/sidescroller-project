event_inherited(); 

//handles animation
shooting = false;
shoot_frame = 4; // marks shoot frame so it lines up w animation
walking_sprite = sprite_index; // indexes default sprite as wealking sprite
shooting_sprite = sShoot; 
shot_fired = false; // Track if we've fired this animation

// replaces sprite when defeated

defeated_object = oShootingEnemyDefeated;

show_debug_message("shooting_sprite id: " + string(sShoot));