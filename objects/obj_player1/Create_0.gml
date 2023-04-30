//Movimentacao
direita = 0;
esquerda = 0;
cima = 0;
pulou = 0;

direc = 0;

gravidade = 0.40;
tamanho_pulo = -10;
pulo = tamanho_pulo;

hveloc = 0;
vveloc = 0;
initial_veloc = 4.2;
initial_veloc_pega = 4.5;
veloc = initial_veloc;

//Combate
pega = 1;
vida = 5;
bomba = 0;
dano = 0;
alfa_hit = 0;
paralizado = 0;
alarm[0] = 0;
alarm[1] = 0;

estado = scr_player1_movendo;