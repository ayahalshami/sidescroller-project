switch (player_class) {
    case PlayerClass.Warrior:
        if (has_explosion_arrow) {
            instance_create_layer(x + 16, y, "Instances", obj_explosion_arrow);
        }
        break;
    case PlayerClass.Mage:
        if (has_fireball) {
            instance_create_layer(x + 16, y, "Instances", obj_fireball);
        } else if (has_icicle) {
            instance_create_layer(x + 16, y, "Instances", obj_icicle);
        }
        break;
}
