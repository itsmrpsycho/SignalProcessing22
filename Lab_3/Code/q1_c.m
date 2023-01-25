% from q1a2

% user defined parameters
file = load("q1.mat");
x = file.x;
N = 5;

% making the moving average
y = zeros(size(x));
for i=1:length(y)
    y(i) = x(i);
    if (i>1)
        y(i) = y(i) + y(i-1);
    end
    if (i>N)
        y(i) = y(i) - x(i-N);
    end
end
y = y/N;

figure();
stem(y(1:100));
title("Moving average system for s_1[n], N = "+num2str(N));
xlabel("n");
ylabel("y[n]");