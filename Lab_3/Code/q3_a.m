w0 = 20000;
Am = 5;
wm = 100;
range = -10:1:10;
x = zeros(length(range),1);
for t=1:length(range)
    x(t) = Am*sin(wm*range(t));
end
y = zeros(size(x));
for t=1:length(range)
    y(t) = x(t)*(cos(w0*range(t)));
end

figure();
subplot(2,1,1)
stem(range,x,Color="red");
xlabel("n");
ylabel("x[n]");
title("Message signal (x[n])");
subplot(2,1,2)
stem(range,y,Color="green");
xlabel("n");
ylabel("y[n]");
title("Modulated signal (AM of x[n] = y[n])");



