clear;

%a. Compute a time series for y(n?) with ?n = 65536, demean it and and plot it
n = 65536;
x = randn(n,1); % input
SampleRate=10;
freq=SampleRate*(0:n/2)/n;                           


y(1) = 0.25*x(1);
y(2) = 0.25*x(2)+0.5*x(1);
for i = 3:n;
y(i) = 0.25*x(i) + 0.5*x(i-1) + 0.25*x(i-2);
end;

s_one = fft(y(1), n+1);
s_two = fft(y(2), n+1);
s_three = fft(y(3), n+1);
y = mean([s_one', s_two', s_three']');

figure; hold;
plot(s_one,'k.-');
plot(s_two,'k.-');
plot(s_three,'k.-');
plot(y,'g.-');
axis([-10 10 -.1 1.1]);


%b. Compute the scaled powerspectrum of y(n)
y_power = y.*conj(y)/n;
freq = (0:length(x)/2) / length(x);
figure;
plot(y_power(1:length(freq)), 'r');
title('Power Spectrum')
inv_p=ifft(y_power);                     


%c. Compute the autocorrelation function of y(n) using the MATLAB command xcorr with option
% ‘unbiased’ and a maximum lag of n/2
y_auto = xcorr(y,floor(length(y)/2), 'unbiased');
y_auto_fft = fft(y_auto);
y_auto_fft = abs(y_auto_fft);
y_auto_fft2 = ifft(y_auto_fft);



%d. Check the Wiener-Khinchin theorem by comparing the power spectrum you got in b. versus the
% FFT of the autocorrelation function you obtained in c.
figure;hold;
plot(y_auto_fft,'go')
plot(y_power,'k.-')
xlabel('lag')
ylabel('correlation')
title('Cross-Correlation: Direct computation (green o), and with Wiener-Khinchin (black .)')



figure;hold;
subplot(2,1,1)
plot(y_auto_fft2,y_power,'k.-')
xlabel('Direct Estimate')
ylabel('Wiener-Khinchin Estimate')
title('Cross-Correlation: Wiener-Khinchin estimate vs. direct estimate')

subplot(2,1,2)
plot(y_auto_fft2,inv_p,'k.-')
ylabel('Wiener-Khinchin Estimate (Inverse)')

