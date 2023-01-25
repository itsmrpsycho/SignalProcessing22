figure()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts=0.5;
subplot(2,2,1);
syms t;
T=1;    
xt = piecewise(t<0 & t>=-T,1+t,t>=0 & t<=T,1-t,0);
time_grid = -1:Ts:1;
xn = zeros(size(time_grid));
for i=1:length(time_grid)
    t = time_grid(i);
    xn(i) = eval(subs(xt));
    syms t;
end
n = -1/Ts:1:1/Ts;
t_fine = -10:0.001:10;
y = sinc_recon(n,xn,Ts,t_fine);
% fplot(xt,[-1,1]);
% hold on;
stem(time_grid,xn);
hold on;
plot(t_fine,y,"black");
xlabel("t");
ylabel("x[n] (blue) and x(t) (black)");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts=0.2;
subplot(2,2,2);
syms t;
T=1;    
xt = piecewise(t<0 & t>=-T,1+t,t>=0 & t<=T,1-t,0);
time_grid = -1:Ts:1;
xn = zeros(size(time_grid));
for i=1:length(time_grid)
    t = time_grid(i);
    xn(i) = eval(subs(xt));
    syms t;
end
n = -1/Ts:1:1/Ts;
t_fine = -10:0.001:10;
y = sinc_recon(n,xn,Ts,t_fine);
% fplot(xt,[-1,1]);
% hold on;
stem(time_grid,xn);
hold on;
plot(t_fine,y,"black");
xlabel("t");
ylabel("x[n] (blue) and x(t) (black)");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts=0.1;
subplot(2,2,3);
syms t;
T=1;    
xt = piecewise(t<0 & t>=-T,1+t,t>=0 & t<=T,1-t,0);
time_grid = -1:Ts:1;
xn = zeros(size(time_grid));
for i=1:length(time_grid)
    t = time_grid(i);
    xn(i) = eval(subs(xt));
    syms t;
end
n = -1/Ts:1:1/Ts;
t_fine = -10:0.001:10;
y = sinc_recon(n,xn,Ts,t_fine);
% fplot(xt,[-1,1]);
% hold on;
stem(time_grid,xn);
hold on;
plot(t_fine,y,"black");
xlabel("t");
ylabel("x[n] (blue) and x(t) (black)");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts=0.05;
subplot(2,2,4);
syms t;
T=1;    
xt = piecewise(t<0 & t>=-T,1+t,t>=0 & t<=T,1-t,0);
time_grid = -1:Ts:1;
xn = zeros(size(time_grid));
for i=1:length(time_grid)
    t = time_grid(i);
    xn(i) = eval(subs(xt));
    syms t;
end
n = -1/Ts:1:1/Ts;
t_fine = -10:0.001:10;
y = sinc_recon(n,xn,Ts,t_fine);
% fplot(xt,[-1,1]);
% hold on;
stem(time_grid,xn);
hold on;
plot(t_fine,y,"black");
xlabel("t");
ylabel("x[n] (blue) and x(t) (black)");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
