/// @description Various alarms for button presses

useButton = instance_create_depth(bbox_right + 25, room_height - sprite_get_yoffset(sprItemBox) + 20, depth - 1, obj_button);
useButton.myText = "Use";

trashButton = instance_create_depth(bbox_right + 75, room_height - sprite_get_yoffset(sprItemBox) + 20, depth -1, obj_button);
trashButton.myText = "Trash";

nameClick = instance_create_depth(sprite_get_xoffset(sprite_index), bbox_top + 15, depth - 1, obj_order);
nameClick.myOrderedBy = 0;

amountClick = instance_create_depth(bbox_right - 30, bbox_top + 15, depth - 1, obj_order);
amountClick.myOrderedBy = 1;


