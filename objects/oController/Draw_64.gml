if (global.paused) {
    // set up alignment and fonts
    draw_set_halign(fa_center);
    draw_set_valign(fa_top); 
    
    // define pause menu elements
    var title_text = "PAUSED";
    var instruction1 = "Press ESC to Resume";
    var instruction2 = "Press R to Restart";
    var instruction3 = "Press Q to Quit";
    
    draw_set_font(TitleFont);
    var title_w = string_width(title_text);
    var title_h = string_height(title_text);
    
    draw_set_font(ButtonFont);
    var inst_w = max(string_width(instruction1), max(string_width(instruction2), string_width(instruction3)));
    var inst_h = string_height(instruction1);
    
    // calculate layout with proper spacing
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;
    
    var padding = 40;
    var title_to_inst_gap = 50;  
    var inst_spacing = 50;       
    
    var content_w = max(title_w, inst_w);
    var total_content_height = title_h + title_to_inst_gap + (inst_h * 3) + (inst_spacing * 2);
    
    // positioning elements
    var title_y = center_y - total_content_height / 2;
    var inst_start_y = title_y + title_h + title_to_inst_gap;
    
    var box_left   = center_x - content_w / 2 - padding;
    var box_right  = center_x + content_w / 2 + padding;
    var box_top    = title_y - padding;
    var box_bottom = inst_start_y + (inst_h * 3) + (inst_spacing * 2) + padding;
    
    // Outer glow layers 
    var glow_color = make_color_rgb(200, 200, 200); 
    var glow_layers = 3;
    var glow_spread = 4;
    for (var i = 1; i <= glow_layers; i++) {
        var offset = i * glow_spread;
        var alpha = 0.1 / i; 
        draw_set_color(glow_color);
        draw_set_alpha(alpha);
        draw_rectangle(box_left - offset, box_top - offset,
                       box_right + offset, box_bottom + offset, false);
    }
    draw_set_alpha(1);
    
    // main box background 
    draw_set_color(make_color_rgb(80, 80, 100)); 
    draw_set_alpha(0.4); 
    draw_rectangle(box_left, box_top, box_right, box_bottom, false);
    draw_set_alpha(1);
    
    // side of border
    var glow_strength = 1;    
    var glow_width = 16;           
    draw_set_color(c_white); 
    draw_set_alpha(glow_strength);
    draw_rectangle(box_left - glow_width, box_top, box_left, box_bottom, false);
    draw_rectangle(box_right, box_top, box_right + glow_width, box_bottom, false);
    draw_set_alpha(1);
    
    // corners of border
    var corner_size = 16;
    draw_set_color(c_white);
    draw_set_alpha(glow_strength);
    draw_rectangle(box_left - corner_size, box_top - corner_size,
                   box_left + corner_size / 2, box_top + corner_size / 2, false);
    draw_rectangle(box_right - corner_size / 2, box_top - corner_size,
                   box_right + corner_size, box_top + corner_size / 2, false);
    draw_rectangle(box_left - corner_size, box_bottom - corner_size / 2,
                   box_left + corner_size / 2, box_bottom + corner_size, false);
    draw_rectangle(box_right - corner_size / 2, box_bottom - corner_size / 2,
                   box_right + corner_size, box_bottom + corner_size, false);
    draw_set_alpha(1);
    
    // draw title
    draw_set_font(TitleFont);
    draw_set_color(c_white);
    draw_text(center_x, title_y, title_text);
    
    // draw instructions
    draw_set_font(ButtonFont);
    draw_set_color(c_white);
    draw_text(center_x, inst_start_y, instruction1);
    draw_text(center_x, inst_start_y + inst_spacing, instruction2);
    draw_text(center_x, inst_start_y + (inst_spacing * 2), instruction3);
    
    // reset alignment
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}