function DTF = DT_Fourier(x,N0,w)
    DTF = zeros(size(w));
    for i=1:length(w)
        for j=1:length(x)
            DTF(i) = DTF(i) + x(j)*exp(-1j*w(i)*(j-N0));
        end
    end
end