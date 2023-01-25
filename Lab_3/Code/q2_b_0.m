% user defined parameters
m = 3;

input = load("q2_2.mat").x;
figure()
y = zeros(length(input)*m,1);
for i=m:length(y)
    if (mod(i,m)==0)
        y(i)=input(i/m);
    else
        y(i)=input((i-mod(i,m))/m);
    end
end

subplot(2,1,1)
stem(input);
xlabel("n");
ylabel("x[n]");
title("input signal");

subplot(2,1,2)
stem(y);
xlabel("n");
ylabel("y[n]");
title("zeroth order interpolation of upsampled signal, m = "+num2str(m));