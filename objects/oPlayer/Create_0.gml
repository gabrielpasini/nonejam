/// @description 
event_inherited();

stateList[states.IDLE] = player_idle_state;
stateList[states.MOVE] = player_move_state;
stateList[states.DEAD] = player_dead_state;

spriteList[states.IDLE] = sPlayerIdle;
spriteList[states.MOVE] = sPlayerMove;
spriteList[states.DEAD] = sPlayerDead;

can_attack = true;
attack_rate = room_speed * 1.5; // 1.5 segundos

oCameraController.follow = oPlayer;