load handel.mat

data = y;
Fsampling = Fs;
clear y Fs;

f0 = 1024;
t_tot = length(data) / Fsampling;
t = 0:1/Fsampling:t_tot-1/Fsampling;
noise = sin(2*pi*f0*t);

y_modified = data + noise';
% sound(y);
% sound(y_modified);

w0 = pi/4;
r0 = 0.5;

% filter 1
b0_1 = 1/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b1 = b0_1 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a1 = [1];
y1 = filter(b1,a1,y_modified);

% filter 2
b0_2 = (1-r0*exp(1j*w0)*(1-r0*exp(-1j*w0)))/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b2 = b0_2 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a2 = conv([1, -r0*exp(1j*w0)],[1, -r0*exp(-1j*w0)]); 
y2 = filter(b2,a2,y_modified);

% sound(y1);
% sound(y2);

figure();
sgtitle("q2 - f, w0 = "+num2str(w0));
subplot(2,2,1);
plot(0:99,data(1:100));
xlabel("n");
ylabel("x[n]");

subplot(2,2,2);
plot(0:99,y_modified(1:100));
xlabel("n");
ylabel("x_{noised}[n]");

subplot(2,2,3);
plot(0:99,real(y1(1:100))/(max(y1)));
xlabel("n");
ylabel("x_{filtered-1}[n]");

subplot(2,2,4);
plot(0:99,real(y2(1:100))/(max(y1)));
xlabel("n");
ylabel("x_{filtered-2}[n]");
