% Nyquist rate = 5
Ts = 0.1;
time_grid = 0:Ts:2;
t_fine = 0:0.001:2;
n=0:1:2/Ts;
xn = cos(5*pi*time_grid);
y1 = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,1)
stem(time_grid,xn);
hold on;
plot(t_fine, y1);
xlabel("t");
ylabel("x(t) - Reconstructed");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts = 0.2;
time_grid = 0:Ts:2;
t_fine = 0:0.001:2;
n=0:1:2/Ts;
xn = cos(5*pi*time_grid);
y1 = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,2)
stem(time_grid,xn);
hold on;
plot(t_fine, y1);
xlabel("t");
ylabel("x(t) - Reconstructed");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts = 0.3;
time_grid = 0:Ts:2;
t_fine = 0:0.001:2;
n=0:1:2/Ts;
xn = cos(5*pi*time_grid);
y1 = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,3)
stem(time_grid,xn);
hold on;
plot(t_fine, y1);
xlabel("t");
ylabel("x(t) - Reconstructed");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ts = 0.4;
time_grid = 0:Ts:2;
t_fine = 0:0.001:2;
n=0:1:2/Ts;
xn = cos(5*pi*time_grid);
y1 = sinc_recon(n,xn,Ts,t_fine);
subplot(2,2,4)
stem(time_grid,xn);
hold on;
plot(t_fine, y1);
xlabel("t");
ylabel("x(t) - Reconstructed");
title("Reconstruction with sinc recon, Ts="+num2str(Ts));
