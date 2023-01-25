[x_n,fs] = audioread("Audio Files_2.wav");

N = length(x_n);
Y = fft(x_n,N);

%plotting
figure();
stem(abs(Y));
ylabel("mag(X[k])");
xlabel("k");
title("DFT v/s k, N="+num2str(N));

%processing
[out,idx] = sort(Y);
L_idx = length(idx);
disp("Three Strongest frequencies (in radians), in order: ")
disp(2*pi*idx(L_idx)/N);
disp(2*pi*idx(L_idx-2)/N);
disp(2*pi*idx(L_idx-4)/N);



