
clear

sz=2;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

figure;hold;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

sz=10;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

sz=20;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

sz=50;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

sz=100;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');


sz=200;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');


sz=500;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

sz=1000;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');


sz=2000;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
noise_estimate=(odd_average-even_average)/2;
rms_signal = sqrt(var(average) + mean(average)^2);
rms_noise = sqrt(var(noise_estimate) + mean(noise_estimate)^2);
snr = 20*log10(rms_signal/rms_noise)
expected_var = (var(average) + var(noise_estimate))/sz;

plot(sz,snr, '*');
plot(sz,expected_var,  'o');

title('Frequency Domain Representation');
ylabel('Signal to Noise (dB) ');
xlabel('N Trials ');
legend('Observed','Expected');
