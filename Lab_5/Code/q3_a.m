arr = [4,16,64];

for N=arr
    L = 4;
    x = [ones(L,1); zeros(N-L,1)];
    Y = fft(x,N);
    figure();
    subplot(3,1,1);
    stem(x);
    xlabel("n");
    ylabel("x[n]");
    title("input signal, N="+num2str(N));
    
    subplot(3,1,2);
    stem(abs(Y));
    xlabel("k");
    ylabel("mag(X[k])");
    title("DFT (magnitude), N="+num2str(N));
    
    subplot(3,1,3);
    stem(angle(Y));
    xlabel("k");
    ylabel("phase(X[k])");
    title("DFT (phase), N="+num2str(N));
end