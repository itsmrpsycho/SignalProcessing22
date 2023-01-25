% p = -0.8
p = -0.8;
a = [1,p];
b = 1;
figure();
zplane(b,a);
title("p = -0.8")

n = 1001;
figure();
freqz(b,a,n,'whole'); 
title("p = -0.8")

figure();
impz(b,a);
title("p = -0.8")

% now p = 0.1
p = 0.1;
a = [1,p];
b = 1;
figure();
zplane(b,a);
title("p = 0.1")

n = 1001;
figure();
freqz(b,a,n,'whole'); 
title("p = 0.1")

figure();
impz(b,a);
title("p = 0.1")