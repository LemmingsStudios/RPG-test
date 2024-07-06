depth = -9998;

//item constructor
function create_item(_name, _desc, _spr) constructor
	{
	name = _name;
	description = _desc;
	sprite = _spr;
	}



//create the items
global.item_list =
	{

	burger : new create_item(
		"Burger",
		"It's a BURGER! Recovers HP.",
		spr_burger
		),
		
	bomb : new create_item(
		"Bomb",
		"Make big boom",
		spr_bomb
		),
		
	}
	
	
	
//create the inventory
inv = array_create(0);

selected_item = -1;
	
//for drawing and mouse positions
sep = 16;
screen_bord = 16;








