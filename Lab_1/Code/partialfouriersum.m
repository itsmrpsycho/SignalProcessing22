function y = partialfouriersum (A, T, time_grid)
% Compute N based on the length of A
N = (length(A)-1)/2;
y = zeros(size(time_grid));
w0 = 2*pi/T;
for k = -N:N
    y = y + A(k+N+1)*exp(1j*k*w0*time_grid); 
end
end
