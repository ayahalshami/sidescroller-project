if (global.paused) {
    
    draw_set_color(c_black);
    draw_set_alpha(0.7);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1); 

   
    draw_set_color(c_black);
    draw_rectangle(200, 150, 440, 300, false);

    
    draw_set_color(c_white);
    draw_text(240, 170, "PAUSED");
    draw_text(220, 210, "Press ESC to Resume");
    draw_text(220, 240, "Press R to Restart");
    draw_text(220, 270, "Press Q to Quit");
}
