
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);


var hovering = (mx > x - button_w / 2 && mx < x + button_w / 2 &&
                my > y - button_h / 2 && my < y + button_h / 2);


if (hovering && mouse_check_button_pressed(mb_left)) {
    room_goto(rm_charselect); 
}
