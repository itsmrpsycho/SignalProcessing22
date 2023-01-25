% user defined parameters 
w0 = pi/4;
r0 = 0.9;

b0 = (1-r0*exp(1j*w0)*(1-r0*exp(-1j*w0)))/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b = b0 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a = conv([1, -r0*exp(1j*w0)],[1, -r0*exp(-1j*w0)]); 

figure();
freqz(b,a,2001);
title("IIR filter");
% 
% t = 0:1:100;
% x = sin(w0*t)+sin(2*w0*t)+cos(w0*t);
% 
% figure();
% subplot(2,1,1)
% plot(0:100,x);
% subplot(2,1,2)
% y = filter(b,a,x);
% plot(0:100,y);
% 
% figure();
% r = 0:99;
% x = cos(r*pi/4) + sin(r*(3*pi/2));
% y = filter(b,a,x);
% subplot(2,1,1)
% plot (r,x);
% subplot(2,1,2)
% plot (r,y);