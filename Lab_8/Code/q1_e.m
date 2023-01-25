% user defined parameters
N = 201;
n_c = (N-1) / 2;

% instead of creating a window and then multiplying with h[n], we directly
% take length of h[n] to be equal to N

hd_n = (1/6)*sinc((1/6)*((0:N-1)-n_c));
w_n = ones(1,N);
h_n1 = hd_n .* w_n;

w_n_blk = blackman(N);
h_n2 = hd_n .* w_n_blk';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 x_n = cos((0:N-1) * pi/16) + (0.25) + sin((0:N-1) * pi/16) + (0.25);

figure();
sgtitle("N = "+num2str(N));

subplot(3,2,1);
plot(0:N-1,x_n);
grid on;
xlabel("n");
ylabel("x[n]");
title("original signal (x[n])");

subplot(3,2,3);
plot(conv(h_n1,x_n,"full"));
grid on;
xlabel("n");
ylabel("x[n]*h_1[n]");
title("Signal filtered with rectangular window filter (x[n])");

subplot(3,2,5);
plot(conv(h_n2,x_n,"full"));
grid on;
xlabel("n");
ylabel("x[n]*h_2[n]");
title("Signal filtered with blackman window filter (x[n])");

%%%%%%%%%%%%%%%%%%%%%%%%%%
x_1_n = cos((0:N-1) * pi/16) + (0.25) + 0.25*randn(1,N);

subplot(3,2,2);
plot(0:N-1,x_1_n);
grid on;
xlabel("n");
ylabel("x_1[n]");
title("original signal (x_1[n])");

subplot(3,2,4);
plot(conv(h_n1,x_1_n,"full"));
grid on;
xlabel("n");
ylabel("x_1[n]*h_1[n]");
title("Signal filtered with rectangular window filter (x_1[n])");

subplot(3,2,6);
plot(conv(h_n2,x_1_n,"full"));
grid on;
xlabel("n");
ylabel("x_1[n]*h_2[n]");
title("Signal filtered with blackman window filter (x_1[n])");
