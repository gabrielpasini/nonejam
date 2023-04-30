var _spr_vida_largura = sprite_get_width(spr_vida);
var _spr_pega_largura = sprite_get_width(spr_pega);
var _spr_bomba_largura = sprite_get_width(spr_bomba_hud);
var _spr_lider_largura = sprite_get_width(spr_lider);
var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);
var _x1 = room_width/2;
var _y1_again = room_height/2 + 200;
var _y1_menu = room_height/2 + 300;
var _spr_botao_jogar_novamente_largura = sprite_get_width(spr_buttonplay_again)/2;
var _spr_botao_jogar_novamente_altura = sprite_get_height(spr_buttonplay_again)/2;
var _spr_botao_menu_largura = sprite_get_width(spr_button_menu)/2;
var _spr_botao_menu_altura = sprite_get_height(spr_button_menu)/2;
var _buffer = 8;

if obj_player1.pega {
	draw_sprite_ext(spr_pega, 0, 720 + _spr_pega_largura, 20, 2.4, 2.4, 0, c_white, 1);
	draw_sprite_ext(spr_bomba_hud, 0, 1680 + _spr_bomba_largura, 20, 2.4, 2.4, 0, c_white, 1);
}

if obj_player2.pega {
	draw_sprite_ext(spr_pega, 0, 1680 + _spr_pega_largura, 20, 2.4, 2.4, 0, c_white, 1);
	draw_sprite_ext(spr_bomba_hud, 0, 720 + _spr_bomba_largura, 20, 2.4, 2.4, 0, c_white, 1);
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

if fim_jogo == 1 {
	if point_in_rectangle(_mx, _my, _x1 - _spr_botao_jogar_novamente_largura, _y1_again - _spr_botao_jogar_novamente_altura, _x1 + _spr_botao_jogar_novamente_largura, _y1_again + _spr_botao_jogar_novamente_altura) {
		balpha_again = 1;
		bscale_again = lerp(bscale_again, 1.2, 0.08);
		if mouse_check_button_pressed(mb_left) {
			room_restart();
		}
	} else {
		bscale_again = lerp(bscale_again, 1, 0.08);
		balpha_again = 0.8;
	}
	
	if point_in_rectangle(_mx, _my, _x1 - _spr_botao_menu_largura, _y1_menu - _spr_botao_menu_altura, _x1 + _spr_botao_menu_largura, _y1_menu + _spr_botao_menu_altura) {
		balpha_menu = 1;
		bscale_menu = lerp(bscale_menu, 1.2, 0.08);
		if mouse_check_button_pressed(mb_left) {
			room_goto(Room3_menu);
		}
	} else {
		bscale_menu = lerp(bscale_menu, 1, 0.08);
		balpha_menu = 0.8;
	}
	
	draw_sprite_ext(spr_buttonplay_again, 0, _x1, _y1_again, bscale_again, bscale_again, 0, c_white, balpha_again);
	draw_sprite_ext(spr_button_menu, 0, _x1, _y1_menu, bscale_menu, bscale_menu, 0, c_white, balpha_menu);
}
