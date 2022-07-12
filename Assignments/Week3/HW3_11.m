% 11.b
clear;
close all;
f=1;
ang_freq = 1:50;
max_time = 10;
sampling_rate = 100;
bin_size = 1 / sampling_rate;
interval = bin_size:bin_size:max_time;
num_samples = length(interval);
range = num_samples / 2;
freq_range = (0:range) * sampling_rate / num_samples;

s(ang_freq) = pi.*dirac(2*pi*ang_freq)+ (1 ./ (1j.*2*pi*ang_freq)); 

figure;
plot(s)
xlim([-100 100])
xlabel('Frequency (rad/s)') 
ylabel('Amplitude (mV)') 
title('Unit Step Transform vs Frequency') 



