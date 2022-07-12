
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
average


clear

sz=10;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average
figure
plot(average,'r')
title('Average 10')


clear

sz=20;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average


clear

sz=50;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average



clear

sz=100;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average
figure
plot(average,'r')
title('Average 100')



clear

sz=200;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average



clear

sz=500;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average



clear

sz=1000;
NOISE_TRIALS=randn(sz); % a [sz x sz] matrix filled with noise

SZ=1:sz;                        % Create signal with sinus 
SZ=SZ/(sz/2);                   % Divide the array SZ by sz/2
S=sin(2*pi*SZ);

for i=1:sz;                     % create a noisy signal 
    NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
end;

average=sum(NOISE_TRIALS)/sz;   % create the average
average
figure
plot(average,'r')
title('Average 1000')


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
average

