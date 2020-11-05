a1_v += a1_a;
a2_v += a2_a;
a1 += a1_v;
a2 += a2_v;

a1_v *= (1-dampening);
a2_v *= (1-dampening);

//math
num1 = -g * (2 * m1 + m2) * sin(a1);
num2 = -m2 * g * sin(a1 - 2 * a2);
num3 = -2 * sin(a1 - a2) * m2;
num4 = a2_v * a2_v * r2 + a1_v * a1_v * r1 * cos(a1-a2);
den = r1 * (2 * m1 + m2 - m2 * cos(2 * a1 - 2 * a2));
a1_a = (num1 + num2 + num3 * num4) / den;

num1 = 2 * sin (a1 - a2);
num2 = a1_v * a1_v * r1 * (m1 + m2);
num3 = g * (m1 + m2) * cos(a1);
num4 = a2_v * a2_v * r2 * m2 * cos(a1-a2);
den = r2 * (2 * m1 + m2 - m2 * cos(2 * a1 - 2 * a2));
a2_a = (num1 * (num2 + num3 + num4)) / den;

prex = x2;
prey = y2;

x1 = (r1 * sin(a1)) +  cx;
y1 = (r1 * cos(a1)) + cy;
x2 = x1 + r2 * sin(a2);
y2 = y1 + r2 * cos(a2);

//drawing
draw_set_color(c_black);

draw_line_width(cx,cy,x1,y1,3);
draw_ellipse(x1-m1/2,y1-m1/2,x1+m1/2,y1+m1/2,false);

draw_line_width(x1,y1,x2,y2,3);
draw_ellipse(x2-m2/2,y2-m2/2,x2+m2/2,y2+m2/2,false);

if surface_exists(surface) {
	if (x2 != 9009) {
		surface_set_target(surface);
		draw_line(prex,prey,x2,y2);
		surface_reset_target();
	}
	draw_surface(surface,0,0);
}
else {
	surface = surface_create(room_width,room_height);
	surface_set_target(surface);
	surface_reset_target();
}

//counter
counter += 1;
if (counter >= 600 && global.timer) {
	counter = 0;
	room_restart();
}