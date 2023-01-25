f0 = 12; %Hz
fs = 64; %Hz
L = 16;
n_range = 0:L-1;
w_n = hann(L);
x_n = cos(2*pi*(f0/fs)*n_range);
for i=1:length(x_n)
    x_n(i) = x_n(i) * w_n(i);
end

m = [1,2,4,8];
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


