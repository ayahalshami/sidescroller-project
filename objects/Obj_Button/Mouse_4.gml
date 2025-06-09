if (global.playerChoice == 1) {
    // Load warrior version of the game
    room_goto(rm_game); // or rm_game_warrior
} else if (global.playerChoice == 2) {
    room_goto(rm_game); // or rm_game_mage
}
