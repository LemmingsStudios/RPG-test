a = clamp(a + (fade * 0.05), 0, 1);

if (a == 1)
{
room_goto(target_rm)
obj_player.x = target_x;
obj_player.y = target_y;
obj_player.face = target_face;
fade = -1;
}

draw_set_alpha(a);
draw_sprite_tiled(sprite_index, image_index, 0, 0);

draw_set_alpha(1);