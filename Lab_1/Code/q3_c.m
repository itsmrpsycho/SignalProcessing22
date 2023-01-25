syms t
T1 = 0.1;

T = 1;
N = 1000;
xt = 1;
F = fourierCoeff(t,xt,T,-T1,T1,N);

time_grid = -0.5:0.01:0.5;
A = partialfouriersum(F,T,time_grid);

figure();
plot(time_grid,A);
grid on;
xlabel("t");
ylabel("reconstructed wave");
title("N = "+num2str(N));