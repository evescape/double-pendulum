r1 = random_range(50,200);
r2 = random_range(50,200);
m1 = random_range(30,50);
m2 = random_range(10,40);
a1 = random_range(pi-0.3,pi+0.3);
a2 = random_range(pi,-pi);
g = random_range(1,2);
dampening = 0.001;

a1_v = 0;
a2_v = 0;
a1_a = 0;
a2_a = 0;

cx = room_width/2;
cy = 450;

x2 = 9009;
y2 = 9009;

surface = noone;

counter = 0;
if !variable_global_exists("timer") global.timer = false;