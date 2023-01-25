Ts = 0.1;
t_fine = 0:0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);
t_samples = 0:Ts:2;
sampledxt = cos(5*pi*t_samples)+sin(10*pi*t_samples);

figure();
subplot(2,2,1)
stem(t_samples,sampledxt);
xlabel("t");
ylabel("x[n]");
title("sampled(x(t)) vs t");

subplot(2,2,2)
y1 = interp1(t_samples,sampledxt,t_fine,'previous');
plot(t_fine, y1);
disp("MAE for zeroth order");
disp(max(abs(xt-y1)));
xlabel("t");
ylabel("x[n] with zero order interpolation");
title("zero order interpolation");

subplot(2,2,3)
y2 = interp1(t_samples,sampledxt,t_fine,'linear');
plot(t_fine, y2);
disp("MAE for linear/first order");
disp(max(abs(xt-y2)));
xlabel("t");
ylabel("x[n] with first order interpolation");
title("first order interpolation");

subplot(2,2,4)
n = 0:2/Ts;
y3 = sinc_recon(n,sampledxt,Ts,t_fine);
plot(t_fine, y3);
disp("MAE for sinc interpoltion");
disp(max(abs(xt-y3)));
xlabel("t");
ylabel("x[n] with sinc interpolation");
title("interpolation using sinc function");



