% user defined parameters
lenx = 2000;
M = 51;
w0 = pi/200;

N0 = lenx+1;
discrete_grid = -lenx:lenx;

% impulse response
delta_n = zeros(size(discrete_grid));
delta_n(N0) = 1;
imp_resp = zeros(size(discrete_grid));
imp_resp(N0) = 1;
imp_resp(N0+1) = -1;

s = zeros(size(discrete_grid));
x = zeros(size(discrete_grid));
for i=0:1000
    s(i+N0) = 5*sin(w0*i);
    x(i+N0) = s(i+N0) + randn();
end

figure();
subplot (2,2,1);
stem(0:1000,s(N0:N0+1000),"blue");
hold on;
stem(0:1000,x(N0:N0+1000),"red");
xlabel("n");
ylabel("x[n]");
title("noised sine wave");
grid on;

filtered_x = conv(x,imp_resp,"full");

subplot (2,2,3);
stem(-500:1500,s(N0-500:N0+1500),"blue");
hold on;
stem(-500:1500,filtered_x(3501:5501),"green");
xlabel("n");
ylabel("y(x[n])");
title("filtered noisy sine wave");
grid on;

w=-10:0.01:10;
DT_F1 = DT_Fourier(x,lenx+1,w);
DT_F2 = DT_Fourier(filtered_x,2*lenx+1,w);

%plots
subplot(2,2,2);
plot(w,abs(DT_F1),"blue");
xlabel("w");
ylabel("|DTFT(x)|");
title("Magnitude spectrum of DTFT of noisy sine wave");
grid on;

subplot(2,2,4);
plot(w,abs(DT_F2),"blue");
xlabel("w");
ylabel("|DTFT(filetered_x)|");
title("Magnitude spectrum of DTFT of filtered sine wave");
grid on;

