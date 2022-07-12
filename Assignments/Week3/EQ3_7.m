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

%e/f
s_square = s.^2;

sum(pwr(1:length(freq_range)))
sum(s_square(1:length(freq_range)))

sum(pwr)
sum(s_square)
sum(s_square(1:length(num_samples))) / (2/num_samples)




%g
plot(interval, amp) 
xlim([0 500])
xlabel('Time (s)')
ylabel('Amplitude (mV)')
title('Amplitude in Time Domain') 


%h
W4=exp(1j*2*pi/4); 
W0=W4^0; 
W1=W4^1;
W2=W4^2;
W3=W4^3;

X(0+1)=(amp(0+1)+amp(2+1)*W0)+W0*(amp(1+1)+amp(3+1)*W0);
X(1+1)=(amp(0+1)+amp(2+1)*W2)+W1*(amp(1+1)+amp(3+1)*W2);
X(2+1)=(amp(0+1)+amp(2+1)*W0)+W2*(amp(1+1)+amp(3+1)*W0);
X(3+1)=(amp(0+1)+amp(2+1)*W2)+W3*(amp(1+1)+amp(3+1)*W2);

X(1)
X(2)
X(3)
X(4)

figure;hold;
plot((amp(0+1)+amp(2+1)*W0)+W0*(amp(1+1)+amp(3+1)*W0), '*')
plot(amp(0+1)+amp(2+1)*W2, '*')
plot(W1*(amp(1+1)+amp(3+1)*W2), '*')


plot((amp(0+1)+amp(2+1)*W0)+W2*(amp(1+1)+amp(3+1)*W0), '*')
plot(amp(0+1)+amp(2+1)*W2, '*')
plot(W3*(amp(1+1)+amp(3+1)*W2), '*')

xlabel('Real Component')
ylabel('Imaginary Component') 


%i
tot = X(1) + X(2) + X(3) + X(4);
sum(tot, 'all')
