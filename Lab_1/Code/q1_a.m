% define relevant parameters
% define relevant expressions
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t); % sum of cosines wave
N = 5;
T = 1;
t1 = -T/2;
t2 = T/2;
% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting

FS_idx = -N:N;
figure()
stem(FS_idx,F);
xlabel('k');
ylabel('a_k');
title('Fourier Series Coefficients')

grid on; 