b = 1; % numerator
a = [1,-0.5,0.2,-0.1,0.007,0.14,0.15]; % denominator
figure();
freqz(b,a,1001);
title("Frequency Response");
