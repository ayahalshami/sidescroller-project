// Movemen// Movement
if (keyboard_check(vk_left)) x -= 4;
if (keyboard_check(vk_right)) x += 4;

// Attacks
if (keyboard_check_pressed(ord("Z"))) {
    perform_attack();
}
if (keyboard_check_pressed(ord("X"))) {
    use_ability();
}
