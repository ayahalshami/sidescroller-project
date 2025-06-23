// damages player when hit
with (other) {
    if (!invincible) {
        lives -= 1;
        invincible = true;
        invincible_timer = 120; // grants player invincibility
        
    }
}
instance_destroy(); // destroys arrow