f0 = 12; %Hz
fs = 64; %Hz
L = [16,32,64,128];
figure();
for i=1:length(L)
    n_range = 0:L(i)-1;
    x_n = cos(2*pi*(f0/fs)*n_range);
    N = 8*L(i);
    Y = fft(x_n,N);
    subplot(2,2,i);
    stem(abs(Y));
    ylabel("mag(X[k])");
    xlabel("k");
    title("DFT v/s k, N="+num2str(N)+", L="+num2str(L(i)));
end



