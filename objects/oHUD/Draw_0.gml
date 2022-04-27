//display current coin count and points
draw_text(camera_get_view_x(view_camera[0]) + 41 , camera_get_view_y(view_camera[0]) + 32 , "coins: " + string(global.coins));
draw_text(camera_get_view_x(view_camera[0]) + 43 , camera_get_view_y(view_camera[0]) + 64 , "points: " + string(global.points));
draw_text(camera_get_view_x(view_camera[0]) + 34 , camera_get_view_y(view_camera[0]) + 96 , "HP: " + string(oPlayer.hp));
draw_text(camera_get_view_x(view_camera[0]) + 98 , camera_get_view_y(view_camera[0]) + 128 , "level time remaining: " + string(floor(levelTimer)));

