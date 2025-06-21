// hides backgrounds to display the correct one when player is in zones of map

if (instance_exists(oParentCharacter)) {
    var _player_x = oParentCharacter.x;

    if (_player_x < 5952) {
        show_overworld();
        hide_cave();
        hide_lava();
    } else if (_player_x < 18720) {
        hide_overworld();
        show_cave();
        hide_lava();
    } else {
        hide_overworld();
        hide_cave();
        show_lava();
    }
}
