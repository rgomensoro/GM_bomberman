///@desc src_define_control(var player, players.numero_do_player)
///@param objeto_do_player
///@param numero_do_player

var player = argument0;
var n_player = argument1;

for (i = 0; i < 5; i ++)
{
	player.controles[i] = global.players_controls[# n_player, i];
}