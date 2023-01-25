% we suppose that we change theta in steps of pi/10;

figure();
for r = 0:0.03:1
    theta = pi/3;
    b = [1,-2*cos(theta),1];
    a = [1,-2*r*cos(theta),r*r];
    
    freqz(b,a,1001);
    hold on
end
title("theta = 60 degrees");
