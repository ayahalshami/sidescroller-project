
if (keyboard_check_pressed(vk_escape)) {
    global.paused = !global.paused;
}


if (global.paused) {
    if (keyboard_check_pressed(ord("Q"))) {
        game_end(); 
    }

    if (keyboard_check_pressed(ord("R"))) {
        room_restart(); 
    }
}
