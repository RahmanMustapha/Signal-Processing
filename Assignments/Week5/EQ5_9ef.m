clear;
%sampling rate should 1-124 apparently half of samp freq i guess

clear;
data = load('AlphaRhythm_5seconds.mat');
s = data.alpha_5seconds;
plot(s);

max_time = 5; % s
sampling_rate = 250; % Hz
points = 1024;
bin_size = 1 / sampling_rate;
interval = bin_size:bin_size:max_time;
range = points / 2;
freq_range = (0:range) * sampling_rate / points;

% calculate spectra
fft_s = fft(s, points);
pwr_s = fft_s .* conj(fft_s) / points;
amp_s = pwr_s .^ 0.5;
phase_s = atan(imag(fft_s) ./ real(fft_s));

% plot
figure(1)
plot(freq_range, amp_s(1:length(freq_range)))
xlabel('Frequency (Hz)')
ylabel('Amplitude (mv)')
title('Amplitude spectrum')

figure(2)
plot(freq_range, pwr_s(1:length(freq_range)))
xlabel('Frequency (Hz)')
ylabel('Power (mv^2)')
title('Power spectrum')

figure(3)
plot(freq_range, phase_s(1:length(freq_range)))
xlabel('Frequency (Hz)')
ylabel('Phase (rad)')
title('Phase spectrum')

%e
s_auto = xcorr(s,floor(length(points)), 'unbiased');
s_auto_fft = fft(s_auto);
s_auto_fft = abs(s_auto_fft);
tau = -length(points):length(points);

figure(4);
stem(tau, s_auto_fft);
title('Autocorrelation');
xlabel('Lag');
ylabel('Correlation');


s_auto2 = xcorr(s,floor(length(s)/2), 'unbiased');
s_auto_fft2 = fft(s_auto2);
s_auto_fft2 = abs(s_auto_fft2);
tau2 = -floor(length(s)/2):floor(length(s)/2);

figure(5);
stem(tau2, s_auto_fft2);
title('Autocorrelation');
xlabel('Lag');
ylabel('Correlation');