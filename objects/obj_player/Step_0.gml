right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);


//get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

//pause
if instance_exists(obj_pauser)
{
xspd = 0;
yspd = 0;
}


//set sprite
mask_index = sprite[DOWN];
if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
if xspd == 0
{
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};
}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};
sprite_index = sprite[face];

//collisions
if place_meeting(x + xspd, y, obj_wall) == true
{
xspd = 0;
}
if place_meeting(x , y + yspd, obj_wall) == true
{
yspd = 0;
}

//dialog
if place_meeting(x, y, obj_mom) == true && keyboard_check_pressed(vk_enter){

}


//move the player
x += xspd;
y += yspd;

//run button
if keyboard_check_pressed(vk_shift)
{
move_spd = 2;
image_speed = 1.5;
}
if keyboard_check_released(vk_shift)
{
move_spd = 1;
image_speed = 1;
}



//animate
if xspd == 0 && yspd == 0
{
image_index = 0;
}

//depth
depth = -bbox_bottom;

//dialog interaction
if keyboard_check_pressed(vk_enter){
    var ins = instance_nearest(x,y,obj_npc);

    if instance_exists(ins)
    && distance_to_object(ins)<6
	{
		if !instance_exists(obj_pauser)
		{
        with(ins)create_textbox(text_id);
		}
    }
}


//In-game menu system
if keyboard_check(vk_control)
	{
		if !instance_exists(obj_pauser)
			{
			audio_play_sound(Suck_2, 1000, 0)
			instance_create_depth(x, y, -9999,obj_inventory_menu)
			}
	}