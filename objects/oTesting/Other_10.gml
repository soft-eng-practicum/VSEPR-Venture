/// @description Insert description here
test_it("Player moves to the right")
instance_create(100,100, obj_player);
var positionX = obj_player.phy_position_x;
spd = 5;
x+=spd;

assert_equal(obj_player.phy_position_x, positionX + spd);
test_end();
