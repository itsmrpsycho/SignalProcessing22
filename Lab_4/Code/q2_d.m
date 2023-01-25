% user defined parameters
lenx = 2000;
w0 = pi/200;

N0 = lenx+1;
discrete_grid = -lenx:lenx;

% impulse response (initialization)
delta_n = zeros(size(discrete_grid));
delta_n(N0) = 1;
imp_resp = zeros(size(discrete_grid));

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
ylabel("s[n] & x[n]");
title("sine wave (b) and noised (r)");
grid on;

M = 5;
for i=0:M-1
    imp_resp(i+N0) = 1/M;
end
filtered_x = conv(x,imp_resp,"full");
subplot (2,2,2);
stem(-500:1500,s(N0-500:N0+1500),"blue");
hold on;
stem(-500:1500,filtered_x(3501:5501),"green");
xlabel("n");
ylabel("s[n] & filtered x[n]");
title("sine (blue) & filter output (green), M="+num2str(M));
grid on;

M = 21;
for i=0:M-1
    imp_resp(i+N0) = 1/M;
end
filtered_x = conv(x,imp_resp,"full");
subplot (2,2,3);
stem(-500:1500,s(N0-500:N0+1500),"blue");
hold on;
stem(-500:1500,filtered_x(3501:5501),"green");
xlabel("n");
ylabel("s[n] & filtered x[n]");
title("sine (blue) & filter output (green), M="+num2str(M));
grid on;

M = 51;
for i=0:M-1
    imp_resp(i+N0) = 1/M;
end
filtered_x = conv(x,imp_resp,"full");
subplot (2,2,4);
stem(-500:1500,s(N0-500:N0+1500),"blue");
hold on;
stem(-500:1500,filtered_x(3501:5501),"green");
xlabel("n");
ylabel("s[n] & filtered x[n]");
title("sine (blue) & filter output (green), M="+num2str(M));
grid on;