f0 = 11; %Hz
fs = 64; %Hz
n_range = 0:15;
x_n = cos(2*pi*(f0/fs)*n_range);
m = [1,2,4,8];
L = 16;
figure();
for i=1:2
    N = L* m(i);
    Y = fft(x_n,N);
    subplot(2,2,i);
    stem(abs(Y));
    ylabel("mag(X[k])");
    xlabel("k");
    title("DFT v/s k, N="+num2str(N));
end

for i=3:4
    N = L* m(i);
    Y = fft(x_n,N);
    subplot(2,2,i);
    plot(abs(Y));
    ylabel("mag(X[k])");
    xlabel("k");
    title("DFT v/s k, N="+num2str(N));
end


