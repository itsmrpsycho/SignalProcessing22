% user defined parameters 
w0 = pi/4;

b0_1 = 1/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b1 = b0_1 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a1 = [1];

fvtool(b1,a1);