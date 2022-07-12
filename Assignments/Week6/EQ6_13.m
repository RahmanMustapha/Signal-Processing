clear;
close all;

figure;
data = load('US_Data.mat');
data = data.data;

plot(data);
title('US Infections');
xlabel('Time (Days)');
ylabel('Infections');

figure;
d = diff(data);
plot(d);
title('US Infection Rate');
xlabel('Time (Days)');
ylabel('Infection Rate');

for i=1:103;
    dif(1) = 0;
    dif(i+1) = d(i);
end;


% Parameters
N=length(data);         % number of measurements
sw=2^2;         % variance process noise
sv=5^2;         % measurement noise
% Initial Estimates
x_apriori(1)=0;        % first estimate of Vm
                        % This is the a priori measurement
s_apriori(1)=0;         % a priori estimate of the error; here variance =0 
                        % i.e., we assume that first estimate is perfect
% create a simulated measurement vector
% -------------------------------------
for i=1:N;
    tru(i)=(dif(i)/data(i));
    k(i)=tru(i);
end;

% c
figure;
plot(k);
xlabel ('Time (Days)')
ylabel ('K Estimate')
title ('Observed Covid-19 K Coefficent')


%d
% Equations are numbered as in CH 19
for i=1:N;
    % step 1: Blending of Prediction and Measurement 
    % Compute blending factor K(i)
    K(i)=s_apriori(i)/(s_apriori(i)+sv);                      % Eq (19.19)
    % Update Estimate using the measurement
    % this is the a posteriori estimate
    x_aposteriori(i)=x_apriori(i)+K(i)*(k(i)-x_apriori(i));   % Eq (19.15)
    % Update the error estimate [Note that there
    % are several variants for this procedure;
    % here we use the simplest expression
    s_aposteriori(i)=s_apriori(i)*(1-K(i));                   % Eq (19.20)
    % step 2: Project Estimates for the next Step
    x_apriori(i+1)=x_aposteriori(i);                          % Eq (19.21)
    s_apriori(i+1)=s_aposteriori(i)+sw;                       % Eq (19.22)
end;

figure;hold;
plot(x_aposteriori)
xlabel ('Time (Days)')
ylabel ('K Estimate')
title ('Kalman Filter Measure of Covid-19 K Coefficent')
