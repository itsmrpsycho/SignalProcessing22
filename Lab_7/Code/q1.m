f0 = 10;
Fs = 5000;
time_grid = 0:1/Fs:1;
x = sin(2*pi*f0*time_grid);

% a and B
a=1;
B=4;

figure();
subplot(3,1,1);
plot(Fs*time_grid,x,"blue");
xlabel("n");
ylabel("x[n]");
title("Sampled signal");

y = quadratic_quant(x,B,a);
subplot(3,1,2);
plot(Fs*time_grid,y,"blue");
xlabel("n");
ylabel("y[n]");
title("Quantized signal, B="+num2str(B)+", a="+num2str(a));

e = abs(x-y);
subplot(3,1,3);
plot(Fs*time_grid,e,"black");
xlabel("n");
ylabel("e[n]");
title("Quantization error of signal");

figure();
histogram(e,NumBins=15);
title("Histogram of Quantization error, B="+num2str(B)+", a="+num2str(a));