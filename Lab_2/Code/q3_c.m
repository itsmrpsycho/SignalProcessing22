% we suppose that we change theta in steps of pi/10;

figure();
for theta = 0:pi/100:pi
    r = 0.95;
    b = [1,-2*cos(theta),1];
    a = [1,-2*r*cos(theta),r*r];

    freqz(b,a,1001);
    hold on
end
title("r = 0.95");

