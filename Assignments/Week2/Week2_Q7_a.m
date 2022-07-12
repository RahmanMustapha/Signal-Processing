
clear

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

figure
hold
plot(NOISE_TRIALS(1,:),'g')
plot(S)
title('Single trial GREEN, Signal BLUE')

