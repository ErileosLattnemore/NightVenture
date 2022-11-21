if (obj_player.state = PLAYERSTATE.ATTACKING)
{
	if (place_meeting(x, y, obj_player))
	{
		instance_destroy();
		score += 10;
	}
}