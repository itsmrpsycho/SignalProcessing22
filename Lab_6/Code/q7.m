% 256
% 512
% 1411
% 1411
[y1,Fs1] = audioread("file_example_WAV_1MG.wav");
[y2,Fs2] = audioread("file_example_WAV_2MG.wav");
[y3,Fs3] = audioread("file_example_WAV_5MG.wav");
[y4,Fs4] = audioread("file_example_WAV_10MG.wav");
disp("Sampling rates: ");
disp(Fs1);
disp(Fs2);
disp(Fs3);
disp(Fs4);
disp("Length of audio files (in seconds): ")
disp(length(y1)/Fs1);
disp(length(y2)/Fs2);
disp(length(y3)/Fs3);
disp(length(y4)/Fs4);
disp("Number of bits");
disp(256000/Fs1);
disp(512000/Fs2);
disp(1411000/Fs3);
disp(1411000/Fs4);
disp("Levels of quantization");
disp(1+2^(256000/Fs1));
disp(1+2^(512000/Fs2));
disp(1+2^(1411000/Fs3));
disp(1+2^(1411000/Fs4));