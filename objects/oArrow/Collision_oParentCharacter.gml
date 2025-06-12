// damages player when hit
with (other) {
    if (!invincible) {
        lives -= 1;
        invincible = true;
        invincible_timer = 120; // grants player invincibility
        
        // knockback
        hsp = sign(x - other.x) * 3;
    }
}
instance_destroy(); // destroys arrow