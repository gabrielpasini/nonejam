var _spr_vida_largura = sprite_get_width(spr_vida);
var _spr_pega_largura = sprite_get_width(spr_pega);
var _spr_lider_largura = sprite_get_width(spr_lider);
var _buffer = 8;

if obj_player1.pega {
	draw_sprite_ext(spr_pega, 0, 720 + _spr_pega_largura, 20, 2.4, 2.4, 0, c_white, 1);
}

if obj_player2.pega {
	draw_sprite_ext(spr_pega, 0, 1680 + _spr_pega_largura, 20, 2.4, 2.4, 0, c_white, 1);
}

for (var i = 0; i < obj_player1.vida; i ++) {
	draw_sprite_ext(spr_vida, 0, 90 + (_spr_vida_largura * i) + (_buffer * i), 40, 1.4, 1.4, 0, c_white, 1);
}

for (var i = 0; i < obj_player2.vida; i ++) {
	draw_sprite_ext(spr_vida, 0, 1050 + (_spr_vida_largura * i) + (_buffer * i), 40, 1.4, 1.4, 0, c_white, 1);
}

if obj_player1.vida > obj_player2.vida {
	draw_sprite_ext(spr_lider, 0, 0 + _spr_lider_largura, 60, 1, 1, 0, c_white, 1);
}

if obj_player1.vida < obj_player2.vida {
	draw_sprite_ext(spr_lider, 0, 960 + _spr_lider_largura, 60, 1, 1, 0, c_white, 1);
}

if obj_player2.vida == 0 {
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(0.8);
    draw_set_halign(fa_center);
	draw_sprite_ext(spr_player1_vencedor, 0, 448, 0, 1, 1, 0, c_white, 1);
	fim_jogo = 1;
}

if obj_player1.vida == 0 {
	draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(0.8);
    draw_set_halign(fa_center);
	draw_sprite_ext(spr_player2_vencedor, 0, 960, 512, 1, 1, 0, c_white, 1);
	fim_jogo = 1;
}
