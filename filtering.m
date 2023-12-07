Fsf = 44100;           % Sampling Frequency
Fp = 8e3;              % Passband Frequency in Hz
Fst = 8.4e3;           % stopband Frequency
Ap = 1;                % passband ribble in db
Ast = 95;              % stopband attenuation in d
df = designfilt('lowpassfir', 'PassbandFrequency', Fp, 'StopbandFrequency',...
Fst, 'passbandRipple', Ap, 'stopbandAttenuation', Ast, 'sampleRate', Fsf);
fvtool(df);  %enables to display response
y = filter(df, org_decry_signal);  %flittered signal 
figure;
plot(t,y,'b')
title('filtered signal')
Signal_to_noise_ratio = abs(snr(data,y))
display(Signal_to_noise_ratio)
peaksnr_fliter = psnr(y,data) %peak snr 
si = audioplayer(y,fs)
play(si)