% now changing value of T to 1
T = 1;
w = -5:0.1:5;
syms t;
xt = piecewise(abs(t)<=T,1,0);
ctft = continuousFT(t,xt,-T,T,w);
figure();

subplot(2,2,1);
plot(w,real(ctft));
xlabel("w");
ylabel("real(ctft)");
title("real(ctft) vs w, T="+num2str(T));

subplot(2,2,2);
plot(w,imag(ctft));
xlabel("w");
ylabel("imag(ctft)");
title("imag(ctft) vs w, T="+num2str(T));

subplot(2,2,3);
plot(w,abs(ctft));
xlabel("w");
ylabel("magnitude(ctft)");
title("magnitude(ctft) vs w, T="+num2str(T));

subplot(2,2,4)
plot(w,angle(ctft));
xlabel("w");
ylabel("phase(ctft)");
title("phase(ctft) vs w, T="+num2str(T));

% now changing value of T to 4
T = 4;
w = -5:0.1:5;
syms t;
xt = piecewise(abs(t)<=T,1,0);
ctft = continuousFT(t,xt,-T,T,w);
figure();

subplot(2,2,1);
plot(w,real(ctft));
xlabel("w");
ylabel("real(ctft)");
title("real(ctft) vs w, T="+num2str(T));

subplot(2,2,2);
plot(w,imag(ctft));
xlabel("w");
ylabel("imag(ctft)");
title("imag(ctft) vs w, T="+num2str(T));

subplot(2,2,3);
plot(w,abs(ctft));
xlabel("w");
ylabel("magnitude(ctft)");
title("magnitude(ctft) vs w, T="+num2str(T));

subplot(2,2,4)
plot(w,angle(ctft));
xlabel("w");
ylabel("phase(ctft)");
title("phase(ctft) vs w, T="+num2str(T));