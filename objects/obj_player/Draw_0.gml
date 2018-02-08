/// @desc Draw Player & Shadow
draw_sprite(spr_player_shadow, image_index, x, y);
draw_self();

/// @desc Collision with element
if(place_meeting(x, y, obj_test_ele) && alarm[0] < 0 ) 
{
    alarm[0] = 100;
}