function B = NonIdeal(A,w0_FS,G,a)
B = zeros(size(A));
N = (length(A)-1)/2;
for k=-N:N
    B(k+N+1) = A(k+N+1) * (G/(a+k*1j*w0_FS));
end
end