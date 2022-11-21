key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check(ord("Z"));

switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACKING: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.COMBO: PlayerState_Attack_Combo(); break;	
}
