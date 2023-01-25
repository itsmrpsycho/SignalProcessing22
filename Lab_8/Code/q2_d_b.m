% user defined parameters 
w0 = pi/4;

r0 = 0.99; % change value of r0

b0_2 = (1-r0*exp(1j*w0)*(1-r0*exp(-1j*w0)))/((1 -exp(1j*w0))*(1 -exp(-1j*w0)));
% H_z = b0 * (1-exp(1j*w0)z^-1) * (1-exp(-1j*w0)z^-1);
b2 = b0_2 * conv([1, -exp(1j*w0)],[1, -exp(-1j*w0)]);
a2 = conv([1, -r0*exp(1j*w0)],[1, -r0*exp(-1j*w0)]); 
fvtool(b2,a2);