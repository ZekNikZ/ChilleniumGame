/// @kill player
//if(image_xscale==1) room_restart();
if (image_xscale == 1 && !other.dead) {
	other.trans_state = 3;
	other.trans_on = true;
}