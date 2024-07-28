//dynamically get width and height of menu
var _new_w = 0;

for(var i = 0; i < ds_list_size(global.inven); i++)
{
	var _op_w = string_width(global.inven[| i].name);
	_new_w = max(_new_w, _op_w);
}
width = 72;
height = op_border*2 + string_height(op_height) + (7)*op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/3;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;


//draw the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw the options
draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


for(var i = 0; i < array_length(item_list); i++)
{
	var _c = c_white;
	if pos == i {_c = c_yellow};
draw_text_color(x+op_border, y+op_border-8 + op_space*i, item_list[i], _c, _c, _c, _c, 1);
}