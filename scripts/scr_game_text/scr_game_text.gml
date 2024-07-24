/// @param text_id
function scr_game_text(_text_id){

switch(_text_id)
	{
	case "npc 1":
	scr_text("Hi! I'm npc 1");
	scr_text("ouihrgoidgoihgd");
	scr_text("Do you like video games?");
		scr_option("Yeah","npc 1 - yes");
		scr_option("Nah","npc 1 - no");
		break;
		case "npc 1 - yes":
		scr_text("asiuhfiuh!");
		break;
		case "npc 1 - no":
		scr_text("asiuhfiuh!!!!!!!!!");
		break;
		
	case "mom":
		scr_text("Droggo the dragon's made off with your feckin' sister again");
		scr_text("Could you be a dear and go fetch her for us?");
			scr_option("Yeah","mom 1 - yes");
			scr_option("Nah","mom 1 - no");
		break;
		case "mom 1 - yes":
		scr_text("Oh thank you Droggo!");
		break;
		case "mom 1 - no":
		scr_text("Oi you've always been a bit of a cunt.");
		scr_option("Oi fuck ya mate","mom - end");
		scr_option("Sorry Mum", "mom - continue");
		break;
		case "mom - end":
		room_goto(rm_title_screen);
		break;
		case "mom - continue":
		scr_text("Best stop being a little twat then?");
		break;
		
		
	case "blacksmith":
	scr_text("Oi droggo!");
	scr_text("Bet you'll be needin that sword sharpened for that dragon then?");
	scr_text("Come to my shop if you need any armor!");
		break;
	
	case "npc 3":
	scr_text("Hi! I'm npc 3");
	scr_text("ouihrgoidgoihgd");
	scr_text("ihugdugfnujgf");
		break;
		
	case "bs shop":
	scr_text("Oi, sorry Droggo we fresh outta swords mate.");
	scr_text("How about some potions or some shite?");
		scr_option("Buy", "buy menu")
		scr_option("Sell", "sell menu")
		scr_option("Leave", "exit")
	break;
	case "buy menu":
	instance_destroy();
	instance_create_depth(x,y,-9999, obj_inv_menu);
	break;
	case "sell menu":
	instance_destroy();
	instance_create_depth(x,y,-9999, obj_inv_menu);
	break;
	case "exit":
	instance_destroy();
	break;
	
	}

}