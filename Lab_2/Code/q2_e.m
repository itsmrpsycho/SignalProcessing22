% p = 0.5
p = 0.5;
a = [1,-p];
b = [1,-1/p];
figure();
zplane(b,a);
title("p = 0.5")

n = 1001;
figure();
freqz(b,a,n,'whole'); 
title("p = 0.5")

figure();
impz(b,a);
title("p = 0.5")
