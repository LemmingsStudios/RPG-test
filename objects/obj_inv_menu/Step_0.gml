//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//testing
selected_item = -1;
op_length = ds_list_size(global.inven);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1}

//input sounds
if up_key or down_key == true{
audio_play_sound(Select_1,1,false);
}

//using the options
if accept_key == true && !ds_list_empty(global.inven)
{	
	switch(pos)
		{
		//Put cases here
		case pos:
		audio_play_sound(Confirm_1,1,false);
		global.inven[| pos].effect();
		instance_destroy();
		break;
		}
}




if keyboard_check_released(vk_shift)
	{
	audio_play_sound(Confirm_1,1,false);
	instance_destroy();
	}