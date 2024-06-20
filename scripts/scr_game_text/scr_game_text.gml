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
		break;
		
		
	case "npc 2":
	scr_text("Hi! I'm npc 2");
	scr_text("ouihrgoidgoihgd");
	scr_text("ihugdugfnujgf");
		break;
	
	case "npc 3":
	scr_text("Hi! I'm npc 3");
	scr_text("ouihrgoidgoihgd");
	scr_text("ihugdugfnujgf");
		break;
	
	}

}