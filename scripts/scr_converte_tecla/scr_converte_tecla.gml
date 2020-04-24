/// @description scr_converte_tecla (cod_tecla)
/// @param cod_tecla

cod_tecla = argument0;
txt_tecla = "";

switch (cod_tecla)
{
	case vk_up: txt_tecla = "UP"; break;
	case vk_down: txt_tecla = "DOWN"; break;
	case vk_left: txt_tecla = "LEFT"; break;
	case vk_right: txt_tecla = "RIGHT"; break;
	case vk_space: txt_tecla = "SPACE"; break;
	
	case ord("A"): txt_tecla = "A"; break;
	case ord("B"): txt_tecla = "B"; break;
	case ord("C"): txt_tecla = "C"; break;
	case ord("D"): txt_tecla = "D"; break;
	case ord("E"): txt_tecla = "E"; break;
	case ord("F"): txt_tecla = "F"; break;
	case ord("G"): txt_tecla = "G"; break;
	case ord("H"): txt_tecla = "H"; break;
	case ord("I"): txt_tecla = "I"; break;
	case ord("J"): txt_tecla = "J"; break;
	case ord("K"): txt_tecla = "K"; break;
	case ord("L"): txt_tecla = "L"; break;
	case ord("M"): txt_tecla = "M"; break;
	case ord("N"): txt_tecla = "N"; break;
	case ord("O"): txt_tecla = "O"; break;
	case ord("P"): txt_tecla = "P"; break;
	case ord("Q"): txt_tecla = "Q"; break;
	case ord("R"): txt_tecla = "R"; break;
	case ord("S"): txt_tecla = "S"; break;
	case ord("T"): txt_tecla = "T"; break;
	case ord("U"): txt_tecla = "U"; break;
	case ord("V"): txt_tecla = "V"; break;
	case ord("W"): txt_tecla = "W"; break;
	case ord("X"): txt_tecla = "X"; break;
	case ord("Y"): txt_tecla = "Y"; break;
	case ord("Z"): txt_tecla = "Z"; break;

	case ord("1"): txt_tecla = "1"; break;
	case ord("2"): txt_tecla = "2"; break;
	case ord("3"): txt_tecla = "3"; break;
	case ord("4"): txt_tecla = "4"; break;
	case ord("5"): txt_tecla = "5"; break;
	case ord("6"): txt_tecla = "6"; break;
	case ord("7"): txt_tecla = "7"; break;
	case ord("8"): txt_tecla = "8"; break;
	case ord("9"): txt_tecla = "9"; break;
	case ord("0"): txt_tecla = "0"; break;
	case ord("-"): txt_tecla = "-"; break;
	
	case 0: txt_tecla = "Nulo"; break;
	
	default: txt_tecla = "Nulo"; break;

}

return txt_tecla;