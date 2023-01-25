syms t;
xt = cos(5*pi*t)+sin(10*pi*t);
Ts = 0.1;
t_samples = 0:Ts:2;
sampledxt = zeros(size(t_samples));
for i = 1:length(t_samples)
    t = t_samples(i);
    sampledxt(i) = subs(xt);
    syms t;
end

figure();
stem(t_samples,sampledxt);
xlabel("t");
ylabel("x[n]");
title("sampled(x(t)) vs t")
