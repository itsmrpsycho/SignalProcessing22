% xt = e^jt
T = pi;
w = -5:0.1:5;
syms t;
xt = exp(1j*t);
ctft = continuousFT(t,xt,-T,T,w);
figure();

subplot(2,2,1);
plot(w,real(ctft));
xlabel("w");
ylabel("real(ctft)");
title("real(ctft) vs w, xt = exp(j*t)");

subplot(2,2,2);
plot(w,imag(ctft));
xlabel("w");
ylabel("imag(ctft)");
title("imag(ctft) vs w, xt = exp(j*t)");

subplot(2,2,3);
plot(w,abs(ctft));
xlabel("w");
ylabel("magnitude(ctft)");
title("magnitude(ctft) vs w, xt = exp(j*t)");

subplot(2,2,4)
plot(w,angle(ctft));
xlabel("w");
ylabel("phase(ctft)");
title("phase(ctft) vs w, xt = exp(j*t)");

% now changing xt to cos(t)
T = pi;
w = -5:0.1:5;
syms t;
xt = cos(t);
ctft = continuousFT(t,xt,-T,T,w);
figure();

subplot(2,2,1);
plot(w,real(ctft));
xlabel("w");
ylabel("real(ctft)");
title("real(ctft) vs w, xt = cos(t)");

subplot(2,2,2);
plot(w,imag(ctft));
xlabel("w");
ylabel("imag(ctft)");
title("imag(ctft) vs w, xt = cos(t)");

subplot(2,2,3);
plot(w,abs(ctft));
xlabel("w");
ylabel("magnitude(ctft)");
title("magnitude(ctft) vs w, xt = cos(t)");

subplot(2,2,4)
plot(w,angle(ctft));
xlabel("w");
ylabel("phase(ctft)");
title("phase(ctft) vs w, xt = cos(t)");