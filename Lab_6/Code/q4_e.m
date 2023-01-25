w0 = 1;
N = 5;
wc = 2.5;
 
% for signal
syms t;
xt = sin(2*t) + cos(3*t);
T = 2*pi;
A = fourierCoeff(t,xt,T,-pi,pi,N);

% for reconstruction
time_grid = -2*T:0.01:2*T;
A_outputsignal = partialfouriersum(A,T,time_grid);
B = myLPF(A,w0,wc);
B_outputsignal = partialfouriersum(B,T,time_grid);
 
% disp(A');
% disp(B');

figure();
plot(time_grid,A_outputsignal,"red");
hold on;
plot(time_grid,B_outputsignal,"blue");
 
xlabel("t");
ylabel("A: red, B: blue");
title("signals v/s t [LPF], wc="+num2str(wc));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w0 = 1;
N = 5;
wc = 2.5;
 
% for signal
syms t;
xt = sin(2*t) + cos(3*t);
T = 2*pi;
A = fourierCoeff(t,xt,T,-pi,pi,N);

% for reconstruction
time_grid = -2*T:0.01:2*T;
A_outputsignal = partialfouriersum(A,T,time_grid);
B = myHPF(A,w0,wc);
B_outputsignal = partialfouriersum(B,T,time_grid);
 
% disp(A');
% disp(B');
 
figure();
plot(time_grid,A_outputsignal,"red");
hold on;
plot(time_grid,B_outputsignal,"blue");
 
xlabel("t");
ylabel("A: red, B: blue");
title("signals v/s t [HPF], wc="+num2str(wc));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

w0 = 1;
N = 5;
G = 1;
a = 1;
 
% for signal
syms t;
xt = sin(2*t) +  cos(3*t);
T = 2*pi;
A = fourierCoeff(t,xt,T,-pi,pi,N);

% for reconstruction
time_grid = -2*T:0.01:2*T;
A_outputsignal = partialfouriersum(A,T,time_grid);
B = NonIdeal(A,w0,G,a);
B_outputsignal = partialfouriersum(B,T,time_grid);
 
% disp(A');
% disp(B');
 
figure();
plot(time_grid,A_outputsignal,"black");
hold on;
plot(time_grid,B_outputsignal,"blue");
 
xlabel("t");
ylabel("A: red, B: blue");
title("signals v/s t [Non Ideal]");
