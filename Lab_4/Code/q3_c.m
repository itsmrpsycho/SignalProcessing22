% user defined parameters
lenx = 100;
discrete_grid = -lenx:lenx;
N0 = lenx+1;
w1 = pi/8;
w2 = pi/4;

syms w;
% X = piecewise(abs(w)<w_c,1,0);
X = piecewise(abs(w)>=w1 & abs(w)<=w2,1,0);
x = zeros(size(discrete_grid));
% fplot (w,X);

x = int(exp(1j*w*discrete_grid)*X/(2*pi),w,[-pi,pi]);
disp("hi");

figure();
subplot(1,3,1);
stem(discrete_grid,real(x),"blue");
xlabel("n");
ylabel("constructed x[n]");
title("real part of x[n] vs n");

subplot(1,3,2);
stem(discrete_grid,imag(x),"blue");
xlabel("n");
ylabel("constructed x[n]");
title("imaginary part of x[n] vs n");

subplot(1,3,3);
stem(discrete_grid,abs(x),"blue");
xlabel("n");
ylabel("constructed x[n]");
title("magnitude of x[n] vs n");