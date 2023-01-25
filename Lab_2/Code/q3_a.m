figure();

r = 0.5;
theta = pi/2;
b = [1,-2*cos(theta),1];
a = [1,-2*r*cos(theta),r*r];

zplane(b,a);
title("r = 0.5, theta = pi/2");

figure();
r = 0.4;
theta = pi/3;
b = [1,-2*cos(theta),1];
a = [1,-2*r*cos(theta),r*r];

zplane(b,a);
title("r = 0.4, theta = pi/3");

