if (global.paused) exit;

event_inherited();
defeated_object = oShootingEnemyDefeated; 
patrol_range = 150; 
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
    
    if (dist < 300 && can_see) {
        player_detected = true;
        
        // shoot every (x) seconds (edit shoot timer. currently at 3 seconds)
        if (shoot_timer <= 0) {
            var arrow = instance_create_layer(x, y, layer, oArrow);
            arrow.hsp = sign(player.x - x) * 3;
            if (arrow.hsp > 0) {
                arrow.image_xscale = -1;
            } else {
                arrow.image_xscale = 1;
            }
            shoot_timer = 180;
        }
    }
}

// movement logic
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

// check if defeated
if (hp <= 0) {
    instance_create_layer(x, y, layer, defeated_object);
    instance_destroy();
}