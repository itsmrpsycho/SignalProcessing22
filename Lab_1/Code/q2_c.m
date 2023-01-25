syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t); 
N = 5;
T = 1;
t1 = -T/2;
t2 = T/2;

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);
% reconstructing the signal
time_grid = -0.5:0.01:0.5;
Reconstructed_signal = partialfouriersum (F, T, time_grid);

% calculating errors (under time grid)

% maximum absolute error
maxerror = 0;
for i=1:length(time_grid)
    t = time_grid(i);
    error = abs(eval(subs(xt))-real(Reconstructed_signal(i)));
    %disp(error);
    if (error > maxerror)
        maxerror = error;
    end
end

% rms error
sumoferrors = 0;
for i=1:length(time_grid)
    t = time_grid(i);
    error = abs(eval(subs(xt))-real(Reconstructed_signal(i)));
    sumoferrors = sumoferrors + error*error;
end
meanoferrors = sumoferrors/length(time_grid);
rmserror = sqrt(meanoferrors);

disp("MAE = " + num2str(maxerror));
disp("RMS error = " + num2str(rmserror));

figure()

plot(time_grid,real(Reconstructed_signal),Color="green");
hold on
fplot(xt,[time_grid(1),time_grid(length(time_grid))],Color="red");
xlabel("time");
ylabel("value of signal");
title("Original (red) and Reconstructed (green) signal")
