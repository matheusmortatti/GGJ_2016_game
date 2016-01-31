/// scr_init_game();

global.gameWidth = 640;
global.gameHeight = 480;
global.zoom = 2;
surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0, false);
