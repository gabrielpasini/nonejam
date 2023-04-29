/// @description
if (xstart - x != 0) {
	sprite_index = wood_arrow_h;
	image_xscale = sign(xstart - x) * -1;
} else if (ystart - y != 0) {
	sprite_index = wood_arrow_v;
	image_yscale = sign(ystart - y);
}
draw_self();