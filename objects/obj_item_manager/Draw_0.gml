draw_set_font(global.font_main);

for (var i = 0; i <array_length(inv); i++)
	{
	var _xx = camera_get_view_x(view_camera[0]) + screen_bord;
	var _yy = camera_get_view_y(view_camera[0]) + screen_bord;
	var _sep = sep;
	var _col = c_white;
	
	draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
	
	if selected_item == i { _col = c_yellow; };
	draw_set_color(_col);
	
	draw_text( _xx + 16, _yy + _sep*i, inv[i].name );
	
	draw_set_color(c_white);
	}