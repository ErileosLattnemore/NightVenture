// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	hSpeed = (key_right - key_left) * walkSp;
	vSpeed = vSpeed + grv;

	if (place_meeting(x+hSpeed, y, obj_wall))
	{
		var onePixel = sign(hSpeed);
		while (!place_meeting(x+onePixel,y,obj_wall)) x += onePixel;
		hSpeed = 0;
	}
	if (key_left) image_xscale = -1; else if (key_right) image_xscale = 1;
	x += hSpeed;

	if (place_meeting(x, y+vSpeed, obj_wall))
	{
		var onePixel = sign(vSpeed);
		while (!place_meeting(x, y+onePixel, obj_wall)) y += onePixel;
		vSpeed = 0
	}

	y += vSpeed;
	
	if (key_attack) state = PLAYERSTATE.ATTACKING;

}