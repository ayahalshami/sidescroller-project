// hits enemy object
with (other) {
    if (variable_instance_exists(id, "hp")) {
        hp -= 1;
        if (hp <= 0) {
            instance_create_layer(x, y, layer, defeated_object);
            instance_destroy();
        }
    }
}