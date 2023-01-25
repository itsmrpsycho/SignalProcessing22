syms t;

T = 1;
N = 20;
xt = piecewise(t<-0.25,0,t>0.25,0,t>0 & mod(t,T)<0.25,t-floor((t)/T),t<0 & mod(t+T,T)>0.25,-t);

F = fourierCoeff(t,xt,T,-0.25,0.25,N);
stem(-N:N,F*T);
grid on;
xlabel("N");
ylabel("a_k");
title("FS coefficients for given wave (a): x_1(t)");