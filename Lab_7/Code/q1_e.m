f0 = 10;
Fs = 5000;
time_grid = 0:1/Fs:1;
x = sin(2*pi*f0*time_grid);

% a and B
a=1;
maxerror = zeros(1,8);

for B = 1:1:8
    y = quadratic_quant(x,B,a);
    e = abs(x-y);
    maxerror(B) = max(e);
end
figure();
stem(1:8,maxerror,"blue");
xlabel("B");
ylabel("max error");
title("max error v/s B");