//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//testing
selected_item = -1;
op_length = array_length(item_list);

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1}

//input sounds
if up_key or down_key == true{
audio_play_sound(Select_1,1,false);
}

//using the options
if accept_key == true
{	
	switch(pos)
		{
		//Put cases here
		case 0:
		if global.gold >= 10 && ds_list_size(global.inven) < obj_item_manager.inv_max
			{
			audio_play_sound(Confirm_1,1,false);
			ds_list_add(global.inven,global.item_list.hp_pot)
			global.gold -= 10;
			}
		else
			{
			audio_play_sound(Cancel_1,1,false);
			}
		break;
		
		case 1:
		if global.gold >= 10 && ds_list_size(global.inven) < obj_item_manager.inv_max
			{
			audio_play_sound(Confirm_1,1,false);
			ds_list_add(global.inven,global.item_list.mp_pot)
			global.gold -= 10;
			}
		else
			{
			audio_play_sound(Cancel_1,1,false);
			}
		break;
		
		case 2:
		if global.gold >= 20 && ds_list_size(global.inven) < obj_item_manager.inv_max
			{
			audio_play_sound(Confirm_1,1,false);
			ds_list_add(global.inven,global.item_list.super_pot)
			global.gold -= 20;
			}
		else
			{
			audio_play_sound(Cancel_1,1,false);
			}
		break;
		}
}




if keyboard_check_released(vk_shift)
	{
	audio_play_sound(Confirm_1,1,false);
	instance_destroy();
	}