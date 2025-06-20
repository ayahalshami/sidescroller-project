// this needs to be under drawgui and not just a draw event in order to display in proper room
// otherwise it will show in every room
// if character not present then exist
if (!instance_exists(oParentCharacter)) {
    exit;
}

// checks global score, sets it to 0 if not found

if (!variable_global_exists("score")) {
    global.score = 0;
}

// sets positioning of coin ui to top right

var screen_w = display_get_gui_width(); // width of gui (not room width) for proper display
var icon_x = screen_w - 128;
var icon_y = 32;
var scale = 4;  // scale up coin size on ui to look nice 
var spacing = 8;
var coin_w = sprite_get_width(sCoin) * scale;

// determine which frame to draw (if true, if not do not draw any)
var frame = is_animating ? floor(anim_index) : 0;

// draws sprite
draw_sprite_ext(sCoin, frame, icon_x + 30, icon_y - 25, scale, scale, 0, c_white, 1);

// put score text next to coin ui
draw_set_font(ButtonFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_text(icon_x + coin_w + spacing, icon_y, "x" + string(global.score));
