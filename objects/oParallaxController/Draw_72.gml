// stores position in camera x

var _camera_x = camera_get_view_x(view_camera[0]);

//sets up parallax for bgs in zone 1

layer_x("Backgrounds_1", _camera_x * 1.0);

layer_x("overworldBG7", _camera_x * 0.1);

layer_x("overworldBG6", _camera_x * 0.2);

layer_x("overworldBG5", _camera_x * 0.4);

layer_x("overworldBG4", _camera_x * 0.6);

layer_x("overworldBG3", _camera_x * 0.75);

layer_x("overworldBG2", _camera_x * 0.9);

layer_x("overworldBG1", _camera_x * 1.0);

// bgs in zone 2

layer_x("cave_background_4_1", _camera_x * 0.1);

layer_x("cave_background_3_1", _camera_x * 0.2);

layer_x("cave_background_2_1", _camera_x * 0.4);

layer_x("cave_background_1_1", _camera_x * 0.6);


layer_x("cave_background_4", _camera_x * 0.1);

layer_x("cave_background_3", _camera_x * 0.2);

layer_x("cave_background_2", _camera_x * 0.4);

layer_x("cave_background_1", _camera_x * 0.6);

// for future ash
// parallax changes potentially can be handled as follows
//if (_camera_x > 500) {
//    layer_x("cave_background_4", (_camera_x - 500) * 0.1);
//} else {
//    layer_x("cave_background_4", 0); 
//}