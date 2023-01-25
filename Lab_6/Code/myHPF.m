function B = myHPF(A,w0_FS,wc)
    range = floor(wc/w0_FS);
    B=A;
    N = (length(A)-1)/2;
    for i=N-range+1:N+1
        B(i) = 0;
        B(2*N+1-i+1) = 0;
    end
end