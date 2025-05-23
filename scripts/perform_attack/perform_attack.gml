switch (player_class) {
    case PlayerClass.Warrior:
        instance_create_layer(x + 16, y, "Instances", obj_sword_slash);
        if (has_multislash) {
            instance_create_layer(x - 16, y, "Instances", obj_sword_slash);
            instance_create_layer(x, y - 16, "Instances", obj_sword_slash);
        }
        break;

    case PlayerClass.Mage:
        instance_create_layer(x + 16, y, "Instances", obj_magic_orb);
        break;
}
