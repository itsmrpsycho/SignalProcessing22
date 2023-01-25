% user defined parameters
w = -10:0.01:10;
lenx = 200;

x = zeros(2*lenx+1,1);
N0 = lenx+1;

% x(N0) = 1;

% x(N0-3) = 1;

% for i=N0-3:N0+3
%     x(i) = 1;
% end

w0 = pi/4;
for i=-lenx:lenx
    x(i+N0) = sin(w0*i);
end

DT_F = DT_Fourier(x,N0,w);

%plots
figure();
subplot(2,2,1);
plot(w,abs(DT_F),"blue");
xlabel("w");
ylabel("|y|");
title("Magnitude spectrum of DTFT");
grid on;

subplot(2,2,2);
plot(w,angle(DT_F),"blue");
xlabel("w");
ylabel("phase(y)");
title("Phase (complex) of DTFT");
grid on;

subplot(2,2,3);
plot(w,real(DT_F),"green");
xlabel("w");
ylabel("real(y)");
title("Real part of DTFT");
grid on;

subplot(2,2,4);
plot(w,imag(DT_F),"green");
xlabel("w");
ylabel("imag(y)");
title("Imaginary part of DTFT");
grid on;


