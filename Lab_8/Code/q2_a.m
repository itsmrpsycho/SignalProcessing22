% user defined parameters 
w0 = pi/4;

b0 = 1/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b = b0 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a = [1];

figure();
freqz(b,a,2001);
title("FIR filter");

% r = 0:99;
% x = cos(r*pi/4) + sin(r*(3*pi/2));
% y = filter(b,a,x);
% subplot(2,1,1)
% plot (r,x);
% subplot(2,1,2)
% plot (r,y);