f0 = 10;
Fs = 5000;
time_grid = 0:1/Fs:1;
x2 = x.^2;
% a and B
a=1;
SQNR = zeros(1,8);

for B = 1:1:8
    y = quadratic_quant(x,B,a);
    e = abs(x-y);
    e = e.^2;
    SQNR(B) = sum(x2)/sum(e);
end
figure();
stem(1:8,SQNR,"blue");
xlabel("B");
ylabel("SQNR");
title("SQNR v/s B");