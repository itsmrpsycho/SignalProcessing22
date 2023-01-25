% Defining x1 and x2
x_1 = zeros(1,10);
for i=1:10
    x_1(i) = normrnd(0,1);
end
x_2 = zeros(1,10);
x_2(4) = 1;

% conv
Convol = conv(x_1,x_2,"full");
X1 = fft(x_1,19);
X2 = fft(x_2,19);
X1X2 = zeros(1,19);
for i=1:length(X1)
    X1X2(i) = X1(i) * X2(i);
end
Convol_DFT = ifft(X1X2,19);

% circ conv
Circ_Convol = cconv(x_1,x_2,10);
X1c = fft(x_1,10);
X2c = fft(x_2,10);
X1X2c = zeros(1,10);
for i=1:length(X1c)
    X1X2c(i) = X1c(i) * X2c(i);
end
Circ_Convol_DFT = ifft(X1X2c,10);

% PLOTTING

figure();
subplot(2,2,1);
stem(Convol,"red");
xlabel("n");
ylabel("x1*x2");
title("Convolution using conv()")

subplot(2,2,2);
stem(Circ_Convol,"red");
xlabel("n");
ylabel("x1*x2");
title("Circular Convolution using cconv()")

subplot(2,2,3);
stem(real(Convol_DFT),"black");
xlabel("n");
ylabel("IDFT(X1.X2)");
title("Convolution using DFT")

subplot(2,2,4);
stem(real(Circ_Convol_DFT),"black");
xlabel("n");
ylabel("IDFT(X1.X2)");
title("Circular Convolution using DFT")