syms t;

T = 1;
N = 20;
xt = piecewise(t<-0.25,0,t>0.25,0,mod(t+0.25,T)<0.50,t-floor((t+0.25)/T));
F = fourierCoeff(t,xt,T,-0.25,0.25,N);

stem(-N:N,F*T);
grid on;
xlabel("N");
ylabel("a_k");
title("FS coefficients for given wave (b): x_2(t)");