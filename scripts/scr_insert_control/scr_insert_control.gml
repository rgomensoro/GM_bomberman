///@desc scr_insert_control(var player, up, down, left, right, bomb)
///@param player
///@param comando_up
///@param comando_down
///@param comando_left
///@param comando_right
///@param comando_bomb

var player = argument0;
var con = [argument1, argument2, argument3, argument4, argument5];

for (i = 0; i < 5; i ++)
{
	global.players_controls[# player, i] = con[i];
}

