//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level])

//move through the menu
if !instance_exists(obj_submenu)
{
pos += down_key - up_key;
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length - 1}
}

//input sounds
if up_key or down_key == true{
audio_play_sound(Select_1,1,false);
}

if accept_key && !instance_exists(obj_submenu)
{
audio_play_sound(Confirm_1,1,false);
}



//using the options
if accept_key{
	
	var _sml = menu_level;
	switch(menu_level){
//Main Menu
case 0:
switch(pos){
//Resume Game
case 0: instance_destroy();
break;
//Items
case 1: 
if global.inv !=0 
{
instance_create_depth(x,y,-9999, obj_inv_menu)
}
break;

//Equipment
case 2: menu_level =2; break; 

//quit game
case 3: menu_level =3; break;
}
break;

//Inventory
case 1:
switch(pos){
//
case 0:

break;

//
case 1:

break;

//
case 2:

break;

//
case 3:
menu_level = 0;
break;

}

break;

//
case 2:
switch(pos){
//
case 0:

break;

//
case 1:

break;

//
case 2:

break;

//back
case 3:
menu_level = 0;
break;

}

break;
	
case 3:
switch(pos){

case 0:
menu_level = 0;
break;

case 1:
room_goto(rm_title_screen);
instance_destroy();
break;
}
}
		
		//set position back
		if _sml != menu_level {pos = 0};
		
		//correct option length
op_length = array_length(option[menu_level])
}


if keyboard_check_pressed(vk_shift) && !instance_exists(obj_submenu)
	{
	audio_play_sound(Confirm_1,1,false);
	instance_destroy();
	}