% user defined parameters
w = -10:0.01:10;
lenx = 200;

x1 = zeros(2*lenx+1,1);
x2 = zeros(2*lenx+1,1);
N0 = lenx+1;

b = 0.99;
for i=0:100
    x1(i+N0) = b^i;
    x2(i+N0) = (-b)^i;
%     disp(x2(i+N0));
end
% disp(x1);

DT_F1 = DT_Fourier(x1,N0,w);
DT_F2 = DT_Fourier(x2,N0,w);

%plots
figure();

subplot(2,2,1);
stem(-lenx:lenx,real(x1),"blue");
xlabel("n");
ylabel("x1");
title("Time domain (a=b), b="+num2str(b));
grid on;

subplot(2,2,2);
stem(-lenx:lenx,real(x2),"blue");
xlabel("n");
ylabel("x2");
title("Time domain (a=-b), b="+num2str(b));
grid on;

subplot(2,2,3);
plot(w,abs(DT_F1),"green");
xlabel("w");
ylabel("mag(x1)");
title("Magnitude spectrum of signal (a=b), b="+num2str(b));
grid on;

subplot(2,2,4);
plot(w,abs(DT_F2),"green");
xlabel("w");
ylabel("mag(x2)");
title("Magnitude spectrum of signal (a=-b), b="+num2str(b));
grid on;


