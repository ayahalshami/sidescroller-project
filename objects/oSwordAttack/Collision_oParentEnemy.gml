// collision w enemy
with (other) {
    if (variable_instance_exists(id, "hp")) {
        hp -= 1;
    }
}
instance_destroy(); // destroy hitbox after hitting