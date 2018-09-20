// Defines global overlay booleans for the whole game
global.linearBoolean = false;
global.bentBoolean = false;
global.octahedronBoolean = false;
global.pyramidalBoolean = false;
global.seesawBoolean = false;
global.squarePlanarBoolean = false;
global.squarePyramidalBoolean = false;
global.tetrahedronBoolean = false;
global.trigonalBipyramidalBoolean = false;
global.trigonalPlanarBoolean = false;
global.tShapedBoolean = false;

// Defines booleans for levels
global.dihydrogenMonoxide = false;
global.sulfurTetraflouride = false;

// Start Room
room_goto(rm_grass_0);
instance_create_depth(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]) - 240, depth - 1000, obj_inventory_gui);