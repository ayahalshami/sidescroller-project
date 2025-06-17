// same as other parallax controller

var _camera_x = camera_get_view_x(view_camera[0]);

// set parallax for all bgs

layer_x("cave_background_4_1", _camera_x * 0.1);

layer_x("cave_background_3_1", _camera_x * 0.2);

layer_x("cave_background_2_1", _camera_x * 0.4);

layer_x("cave_background_1_1", _camera_x * 0.6);

