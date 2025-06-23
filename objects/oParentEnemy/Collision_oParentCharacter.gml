// simple collision to remove 1 life from character

with (other) {
    if (!invincible) {
        lives -= 1;
        invincible = true;
        invincible_timer = 120;

    }
}