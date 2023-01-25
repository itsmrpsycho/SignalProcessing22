% from q1a2

% user defined parameters
len_x = 25;
N = 5;

size_x = -len_x:1:len_x;

x = zeros(size(size_x));
for i=size_x
    if (i<0)
        x(i+len_x+1) = 0;
    else
        x(i+len_x+1) = 1;
    end
end

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
stem(-len_x:len_x,y);
title("Moving average system for u[n], N = "+num2str(N));
xlabel("n");
ylabel("y[n]");