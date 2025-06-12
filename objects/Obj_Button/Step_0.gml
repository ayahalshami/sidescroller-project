// Check if mouse is over the button
var hovered = point_in_rectangle(mouse_x, mouse_y, x, y, x + btn_width, y + btn_height);

// Check for left click
if (hovered && mouse_check_button_pressed(mb_left)) {
    
    // Only act if a character was selected
    if (global.playerChoice != 0) {
        
        // Remove the unselected character
        if (global.playerChoice == 1) {
            if (instance_exists(Obj_Mage)) {
                with (Obj_Mage) {
                    instance_destroy();
                }
            }
        } else if (global.playerChoice == 2) {
            if (instance_exists(Obj_Warrior)) {
                with (Obj_Warrior) {
                    instance_destroy();
                }
            }
        }
        
        // Move to the main game room
        room_goto(rm_game); 
    }
}
