walkSp = 5;
grv = .2;
vSpeed = 0;
hSpeed = 0;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE
{
	FREE,
	ATTACKING,
	COMBO
}