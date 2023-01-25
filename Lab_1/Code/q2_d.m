syms t;

T = 1;
t1 = -T/2;
t2 = T/2;
T1 = T/4;
xt = piecewise(t <= T1 & t>=-T1,1,0); 

time_grid = -0.5:0.01:0.5;

% calculating errors (under time grid)

xaxis = 1:100;
MAEarr = zeros(length(xaxis),1);
RMSarr = zeros(length(xaxis),1);

for N=xaxis
    F = fourierCoeff(t,xt,T,t1,t2,N);
    Reconstructed_signal = partialfouriersum(F, T, time_grid);
    
    % maximum absolute error
    maxerror = 0;
    for i=1:length(time_grid)
        t = time_grid(i);
        error = abs(Reconstructed_signal(i)-eval(subs(xt)));
        if (error > maxerror)
            maxerror = error;
        end
    end
    
    % rms error
    sumoferrors = 0;
    for i=1:length(time_grid)
        t = time_grid(i);
        error = abs(Reconstructed_signal(i)-eval(subs(xt)));
        sumoferrors = sumoferrors + error*error;
    end
    meanoferrors = sumoferrors/length(time_grid);
    rmserror = sqrt(meanoferrors);
    disp("N = "+num2str(N)+" MAE = "+num2str(maxerror)+ " RMS Error = " + num2str(rmserror));
    MAEarr(N) = maxerror;
    RMSarr(N) = rmserror;
    
    syms t;
end

figure();
plot(xaxis,MAEarr,Color="blue");
hold on;
plot(xaxis,RMSarr,Color="green");
xlabel("Value of N");
ylabel("Error value");
title("RMS error (green) & MAE error (blue)");


