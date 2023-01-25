N = 20;
w0 = 3*pi/10;
n_range = 0:19;
x = sin(w0*(n_range-1));
Y = fft(x,N);
figure();
subplot(3,1,1);
stem(x);
xlabel("n");
ylabel("x[n]");
title("input signal");

subplot(3,1,2);
stem(abs(Y));
xlabel("k");
ylabel("mag(X[k])");
title("DFT (magnitude)");

subplot(3,1,3);
stem(angle(Y));
xlabel("k");
ylabel("phase(X[k])");
title("DFT (phase)");