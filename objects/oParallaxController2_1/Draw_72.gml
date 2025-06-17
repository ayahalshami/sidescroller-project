// neeed 2 controllers to make parallax work for all parts of cave. otherwise same as other parallax controllers

var _camera_x = camera_get_view_x(view_camera[0]);

layer_x("cave_background_4", _camera_x * 0.1);

layer_x("cave_background_3", _camera_x * 0.2);

layer_x("cave_background_2", _camera_x * 0.4);

layer_x("cave_background_1", _camera_x * 0.6);

