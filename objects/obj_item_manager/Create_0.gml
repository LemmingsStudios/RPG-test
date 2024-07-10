depth = -9998;

//wallet
global.gold = 0;

//item constructor
function create_item(_name, _desc, _spr, _candrop, _effect) constructor
	{
	name = _name;
	description = _desc;
	sprite = _spr;
	can_drop = _candrop;
	effect = _effect;
	}



//create the items
global.item_list =
	{

	burger : new create_item(
		"Burger",
		"It's a BURGER! Recovers HP.",
		spr_burger,
		true,
		
		function()
			{
			obj_player.hp += 10;
			
			//get rid of the item
			array_delete(inv, selected_item, 1);
			}
		
		),
		
	bomb : new create_item(
		"Bomb",
		"Make big boom",
		spr_bomb,
		true,
		
		function()
			{
			instance_create_depth(obj_player.x,obj_player.y, 0, obj_bomb_weapon)
			
			//get rid of the item
			array_delete(inv, selected_item, 1);
			}
		
		),
		
	}
	
	
	
//create the inventory
inv = array_create(0);


selected_item = -1;
	
//for drawing and mouse positions
sep = 16;
screen_bord = 16;








