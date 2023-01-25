function F = fourierCoeff(t,xt,T,t1,t2,N)

% function to find FS coefficients
% initialize
w0 = 1;
F = zeros(2*N+1,1);
% for-loop to find coefficents
for k = -N:N
    F(k+N+1) = (1/T)*int(xt*exp(-1j*k*w0*t),t,[t1,t2]);

end 
end
