N =5;
A = zeros(1,N);
for i = 1:N
    A(i) = 1/(i^2);
end

A1 = 220.00;
B1 = 246.00;
D4 = 293.66;
F4s= 369.99;
E4 = 329.63;
C4s= 277.18;
off = 0;
F_notes = [
    A1,B1,D4,B1,F4s,F4s,E4,off,...
    A1,B1,D4,B1,E4,E4,D4,C4s,B1,off,...
    A1,B1,D4,B1,D4,E4,C4s,A1,A1,E4,D4,off,...
    ];

td_notes = 1.1*[
    0.15,0.3,0.15,0.3,0.25,0.25,0.25,0.3,...
    0.15,0.3,0.15,0.3,0.25,0.3,0.15,0.15,0.15,0.3,...
    0.15,0.3,0.15,0.3,0.15,0.3,0.3,0.3,0.3,0.2,0.35,0.3
    ];

disp("Never gonna give you up!" + ...
    "Never gonna let you down!" + ...
    "Never gonna run around and desert you!");

P = zeros(1,N);
fs = 10000;
td = 1;
f0 =50;
adsr = [0.2,0.2,0.7,0.4,0.2,fs];
xn = harmonics(A,f0,P,td,fs);
yn = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);
for i=1:1
    soundsc(yn);
    pause(sum(td_notes)+3);
end
