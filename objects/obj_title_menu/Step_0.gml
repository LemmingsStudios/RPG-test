//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level])

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1}

//input sounds
if up_key or down_key == true{
audio_play_sound(Select_1,1,false);
}

if accept_key == true{
audio_play_sound(Confirm_1,1,false);
}

//using the options
if accept_key{
	
	var _sml = menu_level;
	switch(menu_level){
	case 0:
switch(pos){
//Start Game
case 0: room_goto_next(); 
audio_stop_all();
audio_play_sound(bgm_town, 1, true);
break;
//Settings
case 1: menu_level =1; break;
//quit game
case 2: game_end(); break;
}
break;

//settings
case 1:
switch(pos){
//window size
case 0:

break;

//brightness
case 1:

break;

//controls
case 2:

break;

//back
case 3:
menu_level = 0;
break;

}
}
		
		//set position back
		if _sml != menu_level {pos = 0};
		
		//correct option length
op_length = array_length(option[menu_level])
}