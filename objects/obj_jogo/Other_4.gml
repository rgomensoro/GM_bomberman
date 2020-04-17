/// @description Insert description here
// You can write your code in this editor

//criando o mapa na room correta!

if (room == rm_level)
{
	if (!instance_exists(obj_mapa))
	{
		instance_create_layer(0, 0, "instances", obj_mapa);
	}
}
