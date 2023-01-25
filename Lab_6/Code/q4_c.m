w0 = 1;
N = 5;
wc = 2;
 
% for signal
syms t;
xt = cos(t);
T = 2*pi;
A = fourierCoeff(t,xt,T,-pi,pi,N);

% for reconstruction
time_grid = -2*T:0.01:2*T;
A_outputsignal = partialfouriersum(A,T,time_grid);
B = myHPF(A,w0,wc);
B_outputsignal = partialfouriersum(B,T,time_grid);
 
disp(A');
disp(B');
 
figure();
plot(time_grid,A_outputsignal,"red");
hold on;
plot(time_grid,B_outputsignal,"blue");
 
xlabel("t");
ylabel("A: red, B: blue");
title("signals v/s t, wc="+num2str(wc));

% wc to 0.5
w0 = 1;
N = 5;
wc = 0.5;
 
% for signal
syms t;
xt = cos(t);
T = 2*pi;
A = fourierCoeff(t,xt,T,-pi,pi,N);

% for reconstruction
time_grid = -2*T:0.01:2*T;
A_outputsignal = partialfouriersum(A,T,time_grid);
B = myHPF(A,w0,wc);
B_outputsignal = partialfouriersum(B,T,time_grid);
 
disp(A');
disp(B');
 
figure();
plot(time_grid,A_outputsignal,"red");
hold on;
plot(time_grid,B_outputsignal,"blue");
 
xlabel("t");
ylabel("A: red, B: blue");
title("signals v/s t, wc="+num2str(wc));