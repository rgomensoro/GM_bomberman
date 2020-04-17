/// @description Insert description here
// You can write your code in this editor

var explo = instance_create_layer(x,y,"Efeitos", obj_explosion);

explo.mae = true;
explo.potencia = potencia;

instance_destroy();
if (pai != noone) pai.total_bombas ++;