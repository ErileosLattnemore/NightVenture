function PlayerState_Attack_Slash(){
	hSpeed = 0;
	
	if (sprite_index != spr_player_attack)
	{
		sprite_index = spr_player_attack;
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	mask_index = spr_attackHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x, y, obj_enemy, hitByAttackNow, false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			var hitID = hitByAttackNow[| i]; 
			if (ds_list_find_index(hitByAttack, hitID) == -1)
			{
				with (hitID)
				{
					EnemyHit();
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = spr_player_idle;
	
	if (animation_end())
	{
		sprite_index = spr_player_idle;
		state = PLAYERSTATE.FREE;
	}
}