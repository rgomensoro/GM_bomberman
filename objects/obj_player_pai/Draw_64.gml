/// @description Insert description here
// You can write your code in this editor
pos = 0;

repeat (life)
{
	
	draw_sprite_ext(spr_down,spr_down.image_index, initial_pos_life + pos, 610, 0.5, 0.5, 0, c_white, 1);
	pos+=16;
}
