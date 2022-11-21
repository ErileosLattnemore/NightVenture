vSpeed = vSpeed + grv;



if (place_meeting(x, y+vSpeed, obj_wall))
{
	var onePixel = sign(vSpeed);
	while (!place_meeting(x, y+onePixel, obj_wall)) y += onePixel;
	vSpeed = 0
}

y += vSpeed;