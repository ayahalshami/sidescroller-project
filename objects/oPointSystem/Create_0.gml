// checks if score exists, if it does not, then creates it

if (!variable_global_exists("score")) {
    global.score = 0;
}

// store score in global.score variable 

previous_score = global.score;  

// sets up animation for gui and animation speed
anim_index = 0;
anim_speed = 0.1;
is_animating = false;
