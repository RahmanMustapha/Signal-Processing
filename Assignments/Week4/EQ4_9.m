clear;
data = load('AlphaRhythm_5seconds.mat');
s = data.alpha_5seconds;
plot(s);

max_time = 5; % s
sampling_rate = 250; % Hz
bin_size = 1 / sampling_rate;
interval = bin_size:bin_size:max_time;
num_samples = 1024;
range = num_samples / 2;
freq_range = (0:range) * sampling_rate / num_samples;

% calculate spectra
fft_s = fft(s, num_samples);
pwr_s = fft_s .* conj(fft_s) / num_samples;
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



