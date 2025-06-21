// defined bg zones for step event

// overworld
show_overworld = function() {
    layer_set_visible("Backgrounds_1", true);
    layer_set_visible("overworldBG7", true);
    layer_set_visible("overworldBG6", true);
    layer_set_visible("overworldBG5", true);
    layer_set_visible("overworldBG4", true);
    layer_set_visible("overworldBG3", true);
    layer_set_visible("overworldBG2", true);
    layer_set_visible("overworldBG1", true);
};

hide_overworld = function() {
    layer_set_visible("Backgrounds_1", false);
    layer_set_visible("overworldBG7", false);
    layer_set_visible("overworldBG6", false);
    layer_set_visible("overworldBG5", false);
    layer_set_visible("overworldBG4", false);
    layer_set_visible("overworldBG3", false);
    layer_set_visible("overworldBG2", false);
    layer_set_visible("overworldBG1", false);
};

// cave
show_cave = function() {
    layer_set_visible("cave_background_4_1", true);
    layer_set_visible("cave_background_3_1", true);
    layer_set_visible("cave_background_2_1", true);
    layer_set_visible("cave_background_1_1", true);
    layer_set_visible("cave_background_4", true);
    layer_set_visible("cave_background_3", true);
    layer_set_visible("cave_background_2", true);
    layer_set_visible("cave_background_1", true);
};

hide_cave = function() {
    layer_set_visible("cave_background_4_1", false);
    layer_set_visible("cave_background_3_1", false);
    layer_set_visible("cave_background_2_1", false);
    layer_set_visible("cave_background_1_1", false);
    layer_set_visible("cave_background_4", false);
    layer_set_visible("cave_background_3", false);
    layer_set_visible("cave_background_2", false);
    layer_set_visible("cave_background_1", false);
};

// lava
show_lava = function() {
    layer_set_visible("lava_bg_5", true);
    layer_set_visible("lava_bg_4", true);
    layer_set_visible("lava_bg_3", true);
    layer_set_visible("lava_bg_2", true);
    layer_set_visible("lava_bg_1", true);
};

hide_lava = function() {
    layer_set_visible("lava_bg_5", false);
    layer_set_visible("lava_bg_4", false);
    layer_set_visible("lava_bg_3", false);
    layer_set_visible("lava_bg_2", false);
    layer_set_visible("lava_bg_1", false);
};