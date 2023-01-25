% from q1a2

% user defined parameters
file = load("q1.mat");
x = file.x;
N = 5;
delta = zeros(size(x));
delta(1) = 1;
% making the moving average
y = zeros(size(delta));
for i=1:length(y)
    y(i) = delta(i);
    if (i>1)
        y(i) = y(i) + y(i-1);
    end
    if (i>N)
        y(i) = y(i) - delta(i-N);
    end
end
y = y/N;

c = conv(y,x);

figure();
stem(c(1:110));

title("MA system constructed from impulse response, N = "+num2str(N));
xlabel("n");
ylabel("y[n]");
