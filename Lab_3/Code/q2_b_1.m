% user defined parameters
m = 2;

input = load("q2_1.mat").x;
figure()
y = zeros(length(input)*m,1);
for i=m:(length(y))
    if (mod(i,m)==0)
        y(i)=input(i/m);
    else
        x1 = floor(i/m);
        x2 = floor(i/m)+1;

        y_x1 = m*x1;
        y_x2 = m*x2;

        y1 = input(x1);
        y2 = input(x2);
         
        y(i)=((y2-y1)/m)*(i) + y1 - (((y2-y1)/m)*y_x1);
    end
end
% disp(y);

subplot(2,1,1)
stem(input);
xlabel("n");
ylabel("x[n]");
title("input signal");

subplot(2,1,2)
stem(y);
xlabel("n");
ylabel("y[n]");
title("first order interpolation of upsampled signal, m = "+num2str(m));