function xr = sinc_recon(n,xn,Ts,t_fine)
xr = zeros(size(t_fine));
wc = pi/Ts;
sumfactor = 1-n(1);
for i = n
    xr = xr + xn(i+sumfactor)*sinc((wc)*(t_fine-i*Ts));
end
end