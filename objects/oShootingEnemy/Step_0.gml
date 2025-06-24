if (global.paused) exit;

defeated_object = oShootingEnemyDefeated; 
patrol_range = 64; 

// shooting timer
if (!variable_instance_exists(id, "shoot_timer")) {
   shoot_timer = 0;
}
shoot_timer -= 1;

// find player (moved outside so it's accessible throughout)
var player = instance_nearest(x, y, oParentCharacter);
var player_detected = false;

if (player != noone) {
   var dist = point_distance(x, y, player.x, player.y);
   // los
   var can_see = !collision_line(x, y, player.x, player.y, oWall, false, true);
   
   show_debug_message("Distance to player: " + string(dist) + ", Can see: " + string(can_see));
   
   if (dist < 300 && can_see) {
       player_detected = true;
       show_debug_message("Player detected! Shoot timer: " + string(shoot_timer));
       
       // shoot every (x) seconds (edit shoot timer. currently at 3 seconds)
       if (shoot_timer <= 0) {
           // Start shooting animation
           if (!shooting) {
               shooting = true;
               image_index = 0;
               image_speed = 0.3; // Adjust animation speed as needed
               show_debug_message("STARTING SHOOTING ANIMATION");
           }
           shoot_timer = 180;
       }
   }
} else {
    show_debug_message("No player found!");
}

show_debug_message("Shooting state: " + string(shooting) + ", Player detected: " + string(player_detected));

// Handle shooting animation
if (shooting) {
    sprite_index = shooting_sprite; // Switch to shooting sprite
    show_debug_message("In shooting mode - image_index: " + string(image_index) + ", shoot_frame: " + string(shoot_frame));
    
    // Check if we're on the shooting frame and haven't shot yet
    if (floor(image_index) == shoot_frame && !shot_fired) {
        // Create arrow on the shooting frame
        var arrow = instance_create_layer(x, y, layer, oArrow);
        arrow.hsp = sign(player.x - x) * 3;
        if (arrow.hsp > 0) {
            arrow.image_xscale = -1;
        } else {
            arrow.image_xscale = 1;
        }
        shot_fired = true; // Mark that we've fired this animation
        show_debug_message("ARROW FIRED!");
    }
    
    // End shooting animation when it completes
    if (image_index >= image_number - 1) {
        shooting = false;
        shot_fired = false; // Reset for next time
        sprite_index = walking_sprite; // Switch back to walking sprite
        image_index = 0;
        show_debug_message("SHOOTING ANIMATION COMPLETE");
    }
    
    // Don't move while shooting, face the player
    vel_x = 0;
    if (player != noone) {
        if (player.x < x) {
            image_xscale = abs(image_xscale);    
        } else {
            image_xscale = -abs(image_xscale);   
        }
    }
    
} else {
    sprite_index = walking_sprite; // Make sure we're using walking sprite when not shooting
    
    // Only do movement logic when NOT shooting
    if (player_detected && player != noone) {
       vel_x = 0;
       
       // flip sprite to face player
       if (player.x < x) {
           image_xscale = abs(image_xscale);    
       } else {
           image_xscale = -abs(image_xscale);   
       }
    } else {
       // resume patrol behavior
       if (x < start_x - patrol_range) {
           vel_x = move_speed;
           image_xscale = -abs(image_xscale); 
       } else if (x > start_x + patrol_range) {
           vel_x = -move_speed;
           image_xscale = abs(image_xscale); 
       } else {
           if (vel_x == 0) {
               if (x < start_x) {
                   vel_x = -move_speed;
               } else {
                   vel_x = move_speed;
               }
           }
           // handles the current direction of the sprite
           if (vel_x > 0) {
               image_xscale = -abs(image_xscale); 
           } else {
               image_xscale = abs(image_xscale); 
           }
       }
    }
}

// NOW run parent code for physics/collision
event_inherited();

// check if defeated
if (hp <= 0) {
   instance_create_layer(x, y, layer, defeated_object);
   instance_destroy();
}

function HandleDamage() {
   // damage check with invincibility system
   if (!invincible) {
       var enemy = instance_place(x, y, oParentEnemy);
       if (enemy != noone) {
           lives -= 1;
           invincible = true;
           invincible_timer = 120; // 2 second invincibility
           // knockback
           var dir = (x < enemy.x) ? -1 : 1;
           hsp = dir * -4;
           vsp = -4;
       }
   }
}