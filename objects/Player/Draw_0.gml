/// @description Insert description here
// You can write your code in this editor


if mine_phase!=0 {
	draw_sprite(spr_mine_animation,round(mine_phase/(max_phase/mine_animation_frames)),floor(mouse_x/13)*13,floor(mouse_y/13)*13)
}

draw_self()