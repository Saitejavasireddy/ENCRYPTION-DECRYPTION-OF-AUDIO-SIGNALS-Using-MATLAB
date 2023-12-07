clc;
clear all 
close all
[data,fs]=audioread("bgm.mp3");
leng = length(data);
t=(1:leng)/fs;
figure(1);
plot(t,data,'b')
xlabel('Time(s)');
ylabel('amp');
title('Original signal');
axis tight;
Q = fix((data * 10^4)/200);  %hh
cyphered_signal = mod((data*10^4),200); %hh
figure(2);
plot (t,cyphered_signal,'b');
xlabel('Time(s)');
ylabel('amp');
title('Cyphered signal');
