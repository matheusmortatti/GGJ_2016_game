/// scr_init_game();

global.gameWidth = 480;
global.gameHeight = 320;
global.zoom = 2;
surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0, false);
