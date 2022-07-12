% 10.a
clear;
close all;

% Real/Imaginary Components
r1 = [1 0];
r2 = [-1 0];
figure;hold;
xlabel('Real Component')
ylabel('Imaginary Component') 
plot(r1(1),r1(2),'o');
plot(r2(1),r2(2),'o');

figure;hold;
xlabel('Real Component')
ylabel('Imaginary Component')
i1 = [0 1];
i2 = [0 -1];
plot(i1(1),i1(2),'o');
plot(i2(1),i2(2),'o');

% Signal vs Frequency
f=1;
ang_freq = 2 * pi * f;
max_time = 10;
sampling_rate = 100;
bin_size = 1 / sampling_rate;
interval = bin_size:bin_size:max_time;
num_samples = length(interval);
range = num_samples / 2;
freq_range = (0:range) * sampling_rate / num_samples;

s = sin(ang_freq*interval)+cos(ang_freq*interval); 

sfft = fft(s, num_samples);
pwr = sfft .* conj(sfft) / num_samples;
amp = pwr .^ 0.5;

figure;
subplot(3,1,1)
plot(freq_range, amp(1:length(freq_range)))
xlim([0.5 1.5])
ylabel('Amplitude (mV)')
title('Amplitude Spectrum')
subplot(3,1,2)
plot(freq_range, pwr(1:length(freq_range)))
xlim([0.5 1.5])
xlabel('Frequency (Hz)') 
ylabel('Power (mV^2)')
title('Power Spectrum') 



% 10.b
figure;
plot(interval, pwr) 
xlim([0 0.2])
xlabel('Time (s)')
ylabel('Power (mV^2)')
title('Power in Time Domain') 
