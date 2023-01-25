function B = myLPF(A,w0_FS,wc)
    range = floor(wc/w0_FS);
    B=A;
    N = (length(A)-1)/2;
    for i=1:N-range
        B(i) = 0;
        B(2*N+1-i+1) = 0;
    end
end