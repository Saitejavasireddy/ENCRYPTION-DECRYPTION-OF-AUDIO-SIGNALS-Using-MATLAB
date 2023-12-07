%ENCRYPTION
en_signal = cyphered_signal * k;
subplot(1,2,1)
figure;
plot(t,en_signal,'b')
xlabel ('time')
ylabel('amplitude')
title('ENCRYPTED SIGNAL');
Signal_to_noise_ratio1 = abs(snr(data,en_signal))
display(Signal_to_noise_ratio1)
peaksnr = psnr(en_signal,cyphered_signal) %peak snr 
display(peaksnr)
%DECRYPTION
de_signal = en_signal / k ;% without decyphering
figure;
plot(t,de_signal,'b')
xlabel ('time')
ylabel('amplitude')
title('DECRYPTED SIGNAL BEFORE DECYPHERING')

% after decyphering
org_decry_signal = (Q*200 + de_signal) / (10^4); %%
figure;
plot(t,org_decry_signal,'b')
xlabel ('time')
ylabel('amplitude')
title('DECRYPTED SIGNAL AFTER DECYPHERING')
Signal_to_noise_ratio2 = abs(snr(data,org_decry_signal))
display(Signal_to_noise_ratio2)
peaksnr_after_decypher = psnr(org_decry_signal,data) %peak snr 
c = audioplayer(org_decry_signal,ref);
play(c)
