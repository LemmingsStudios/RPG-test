depth = -9999

//text parameters
textbox_width = 200;
textbox_height = 64;
border = 8;
line_sep = 12;
line_width = textbox_width - border*2;
txtb_spr = spr_menu;
txtb_img = 0;
txtb_img_spd = 0;



//the text
page = 0;
page_number = 0;
text[0] = "Here's a small bit of dialog to see if everything works";
text[1] = "Wow what a good bit of dialog";
text[2] = "word";
text[3] = "Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Sentence";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = 1;

setup = false;