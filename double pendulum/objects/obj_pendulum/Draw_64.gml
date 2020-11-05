if !(global.timer) {
	draw_set_font(font01);
	draw_set_halign(fa_left);
	draw_text(5,5,"DOUBLE PENDULUM\nPRESS \"R\" TO MAKE NEW GENERATION\nPRESS \"T\" TO AUTOMATICALLY MAKE NEW GENERATIONS");
}
else {
	draw_set_font(font0);
	draw_set_halign(fa_center);
	draw_text(room_width/2,50,"TIME UNTIL NEXT GENERATION: " + string_format((10-(counter/60)),1,2));
}