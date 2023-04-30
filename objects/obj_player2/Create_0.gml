//Movimentacao
direita = 0;
esquerda = 0;
cima = 0;
pulou = 0;

direc = 1;

gravidade = 0.40;
tamanho_pulo = -10;
pulo = tamanho_pulo;

hveloc = 0;
vveloc = 0;
initial_veloc = 4.2;
initial_veloc_pega = 4.5;
veloc = initial_veloc;

hveloc = 0;
vveloc = 0;
veloc = 4.2;

//Combate
if obj_player1.pega == 1 {
	pega = 0;
} else if obj_player1.pega == 0 {
	pega = 1;
}

vida = 5;
bomba = 0;
dano = 0;
alfa_hit = 0;
paralizado = 0;
alarm[0] = 0;
alarm[1] = 0;

estado = scr_player2_movendo;