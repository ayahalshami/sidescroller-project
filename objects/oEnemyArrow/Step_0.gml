// Move the arrow
x += hsp;
y += vsp;

// Optional: Rotate arrow to match movement direction
image_angle = point_direction(0, 0, hsp, vsp);

// Age the arrow and destroy if too old
age += 1;
if (age >= lifetime) {
    instance_destroy();
}

// Optional: Slow down over time
if (speed_decay > 0) {
    hsp *= (1 - speed_decay);
    if (abs(hsp) < 0.1) hsp = 0;
}

// Destroy if hits walls
if (place_meeting(x, y, oWall)) {
    instance_destroy();
}

// Check collision with player characters
var player = instance_place(x, y, oParentCharacter);
if (player != noone) {
    // Damage the player
    if (player.object_index == oKnight) {
        // Use knight's invincibility system
        if (!player.invincible) {
            player.lives -= damage;
            player.invincible = true;
            player.invincible_timer = 60;
            
            // Knockback
            var knockback_dir = sign(hsp);
            player.hsp = knockback_dir * 3;
            player.vsp = -3;
        }
    } else {
        // For mage or other characters without invincibility
        player.lives -= damage;
        
        // Optional knockback
        var knockback_dir = sign(hsp);
        player.hsp = knockback_dir * 3;
        player.vsp = -3;
    }
    
    // Destroy the arrow after hitting
    instance_destroy();
}