//Get inputs
rightKey = keyboard_check(vk_right);
leftKey = keyboard_check(vk_left);
jumpKeyPressed = keyboard_check_pressed( vk_space );
keyAttack = keyboard_check_pressed(ord("H")) || keyboard_check_pressed(ord("Z"));


switch (state)
{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash(); break;
	case PLAYERSTATE.ATTACK_COMBO PlayerState_Attack_Combo(); break;
	
	
	
}














