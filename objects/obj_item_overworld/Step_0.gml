sprite_index =item.sprite;

if place_meeting(x, y, obj_player)
	{
		if item_add(item) == true
		{
		audio_play_sound(Big_Egg_collect_1,1,0)
		instance_destroy();
		}
	}