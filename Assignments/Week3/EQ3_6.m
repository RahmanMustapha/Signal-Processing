% Signal vs Frequency
A=1;
D=1;
A2=1000000;
D2=.000001;
ang_freq = 1:1000;
max_time = 10;
sampling_rate = 100;
bin_size = 1 / sampling_rate;
interval = bin_size:bin_size:max_time;
num_samples = length(interval);
range = num_samples / 2;
freq_range = (1:range) * sampling_rate / num_samples;

s1(ang_freq) = 2*A*sin(ang_freq*(D/2))./ang_freq; 
s2(ang_freq) = 2*A2*sin(ang_freq*(D2/2))./ang_freq; 


figure;
subplot(2,1,1)
plot(s1)
xlim([0 1000])
xlabel('Frequency (rad/s)') 
ylabel('Amplitude (mV)') 
title('Square Pulse Transform vs Frequency') 
subplot(2,1,2)
plot(s2)
xlim([0 1000])
xlabel('Frequency (rad/s)') 
ylabel('Amplitude (mV)') 
title('Square Pulse Transform (modified A and D) vs Frequency') 









% s3(ang_freq) = A*D*sin(pi); 
% s4(ang_freq) = A*D*sin(pi);

% figure;
% subplot(2,1,1)
% plot(s3)
% xlim([0 1000])
% xlabel('Frequency (rad/s)') 
% ylabel('Amplitude (mV)') 
% title('Alternate Square Pulse Transform vs Frequency') 
% subplot(2,1,2)
% plot(s4)
% xlim([0 1000])
% xlabel('Frequency (rad/s)') 
% ylabel('Amplitude (mV)') 
% title('Alternate Square Pulse Transform (modified A and D) vs Frequency') 
