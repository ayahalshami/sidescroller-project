if (player_class == PlayerClass.Warrior) {
    if (!has_multislash) {
        has_multislash = true;
    } else {
        has_explosion_arrow = true;
    }
} else if (player_class == PlayerClass.Mage) {
    if (!has_fireball) {
        has_fireball = true;
    } else {
        has_icicle = true;
    }
}
