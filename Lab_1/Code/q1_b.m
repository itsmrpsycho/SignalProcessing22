% define relevant parameters
% define relevant expressions
syms t

N = 10;
T = 1;
T1 = T/4;
t1 = -T/2;
t2 = T/2;
xt = piecewise(t <= T1 & t>=-T1,1,0);

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% plotting

FS_idx = -N:N;
figure()
stem(FS_idx,F);
xlabel('k');
ylabel('a_k');
title('Fourier Series Coefficients (sq wave)')

grid on; 