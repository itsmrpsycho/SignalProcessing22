% user defined parameters
N = 51;
n_c = (N-1) / 2;

% instead of creating a window and then multiplying with h[n], we directly
% take length of h[n] to be equal to N

hd_n = (1/6)*sinc((1/6)*((0:N-1)-n_c));
w_n = ones(1,N);
h_n = hd_n .* w_n;

figure();
sgtitle("Rectangular window, N = "+num2str(N));

subplot(2,2,1);
stem(0:N-1,h_n);
grid on;
xlabel("n");
ylabel("h[n]");
title("filter coefficients");

% now calculating 1001 point DFT
H_w = fft(h_n,1001);
H_w = fftshift(H_w);
range = -pi:2*pi/1001:pi-2*pi/1001;

subplot(2,2,2);
plot(range,real(H_w));
grid on;
xlabel("w");
ylabel("H[w]");
title("DFT (1001 point)");

subplot(2,2,3);
plot(range,20*log(abs(H_w)/max(abs(H_w))));
grid on;
ylim([-100,10]);
xlabel("w");
ylabel("H[w]");
title("mag(DFT) (1001 point)");

subplot(2,2,4);
plot(range,angle(H_w));
grid on;
xlabel("w");
ylabel("H[w]");
title("phase(DFT) (1001 point)");
