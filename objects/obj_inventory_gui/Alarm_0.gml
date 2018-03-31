/// @description Various alarms for button presses

useButton = instance_create_depth(bbox_right + 28, camera_get_view_y(view_camera[0]) + 228, depth - 1, obj_button);
useButton.myText = "Use";

trashButton = instance_create_depth(bbox_right + 74, camera_get_view_y(view_camera[0]) + 228, depth -1, obj_button);
trashButton.myText = "Trash";

nameClick = instance_create_depth(sprite_get_xoffset(sprite_index) + 60, camera_get_view_y(view_camera[0]) + 156, depth - 1, obj_order);
nameClick.myOrderedBy = 0;

amountClick = instance_create_depth(bbox_right - 30, camera_get_view_y(view_camera[0]) + 156, depth - 1, obj_order);
amountClick.myOrderedBy = 1;


