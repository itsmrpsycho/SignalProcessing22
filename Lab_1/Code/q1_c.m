% define relevant parameters
% define relevant expressions
syms t

N = 20;
T = 1;
T1 = T/4;
t1 = -T/2;
t2 = T/2;
xt = 2*cos(10*pi*t);

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting

FS_idx = -N:N;
figure()
stem(FS_idx,F);
xlabel('k');
ylabel('ck');
title('Fourier Series Coefficients (2cos(10pi*t))')

grid on; 