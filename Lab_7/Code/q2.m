% a
a=1;

[y,Fs] = audioread("file_example_WAV_1MG.wav");
time_grid = 0:1/Fs:1;

for B=1:1:8
    disp("B="+num2str(B));
    y2 = quadratic_quant(y,B,a);
    sound(y);
    pause(2);
    clear sound;
    sound(y2);
    pause(2);
    clear sound;
end
