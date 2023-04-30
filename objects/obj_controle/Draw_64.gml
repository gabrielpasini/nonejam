var _spr_vida_largura = sprite_get_width(spr_vida);
var _spr_pega_largura = sprite_get_width(spr_pega);
var _buffer = 1;
var _vidas_player1 = obj_player1.vida;
var _vidas_player2 = obj_player2.vida;
var _pega_player1 = obj_player1.pega;
var _pega_player2 = obj_player2.pega;

for (var i = 0; i < _vidas_player1; i ++) {
	draw_sprite_ext(spr_vida, 0, 60 + (_spr_vida_largura * i) + (_buffer * i), 40, 1, 1, 0, c_white, 1);
}

for (var i = 0; i < _vidas_player2; i ++) {
	draw_sprite_ext(spr_vida, 0, 1020 + (_spr_vida_largura * i) + (_buffer * i), 40, 1, 1, 0, c_white, 1);
}

if _pega_player1 {
	draw_sprite_ext(spr_pega, 0, 60 + _spr_pega_largura, 100, 1, 1, 0, c_white, 1);
}

if _pega_player2 {
	draw_sprite_ext(spr_pega, 0, 1020 + _spr_pega_largura, 100, 1, 1, 0, c_white, 1);
}