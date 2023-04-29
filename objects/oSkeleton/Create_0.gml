event_inherited();

statesList[states.IDLE] = enemy_idle_state;
statesList[states.MOVE] = enemy_move_state;

spriteList[states.IDLE] = sSkeletonIdle;
spriteList[states.MOVE] = sSkeletonMove;

sp = 1;