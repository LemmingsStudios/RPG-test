if(showing_dialog == false) {
if(dialog.count() <= 0) {
instance_destroy();
return;
}

current_dialog = dialog.pop();
showing_dialog = true;

} else{
if(keyboard_check_pressed(key_next)){
showing_dialog = false;
alpha = 0;
}
}