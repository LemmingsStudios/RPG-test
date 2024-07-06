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
		scr_text("Oi you've always been a bit of a cunt");
		break;
		
		
	case "blacksmith":
	scr_text("Oi droggo!");
	scr_text("Bet you'll be needin that sword sharpened for that dragon then?");
	scr_text("Come to my shop for any armor");
		break;
	
	case "npc 3":
	scr_text("Hi! I'm npc 3");
	scr_text("ouihrgoidgoihgd");
	scr_text("ihugdugfnujgf");
		break;
	
	}

}