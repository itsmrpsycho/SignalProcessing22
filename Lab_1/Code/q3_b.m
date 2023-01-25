syms t

T1 = 0.1;
T = 1;
N = 10*T;
xt = 1;
F = fourierCoeff(t,xt,T,-T1,T1,N);
disp (F);
figure();

stem(-N:N,F*T);
grid on;
xlabel("N");
ylabel("T*a_k");
title("scaled FS coefficients for periodic square wave, T = "+num2str(T));