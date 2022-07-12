%b

sr=256; % sample rate in samples/s
chn=10; % # of EEG channels
step=1/sr; % step size = 1/sample rate (1/s)
t=0:step:100; % time axis in s
freq=1; % seizure frequency in Hz
amp=3; % seizure amplitude (AU)
% create EEG simulation variable EEG (10chns and 10s)
EEG=randn(chn,length(t)).*.7; % random noise scaled at .7
y=zeros(1,length(t));
y(5000:20000)=amp*sin(2*pi*freq*(1:15001)./sr); % sin(2*pi*f*time) - f=1Hz here
% Add seizure in CHNs 1, 3 and 6
EEG(1,:)=EEG(1,:)+y;
EEG(3,:)=EEG(3,:)+.5*y;
EEG(6,:)=EEG(6,:)+2*y;

figure;
subplot(5,1,1);
sgtitle('Seizure Amplitude (AU)')
plot(EEG(1,:));
ylabel('CH 1')

subplot(5,1,2);
plot(EEG(2,:));
ylabel('CH 2')

subplot(5,1,3);
plot(EEG(3,:));
ylabel('CH 3')

subplot(5,1,4);
plot(EEG(4,:));
ylabel('CH 4')


subplot(5,1,5);
plot(EEG(5,:));
xlabel('Time(s)')
ylabel('CH 5')


figure;
sgtitle('Seizure Amplitude (AU)')
subplot(5,1,1);
plot(EEG(6,:));
ylabel('CH 6')

subplot(5,1,2);
plot(EEG(7,:));
ylabel('CH 7')


subplot(5,1,3);
plot(EEG(8,:));
ylabel('CH 8')

subplot(5,1,4);
plot(EEG(9,:));
ylabel('CH 9')


subplot(5,1,5);
plot(EEG(10,:));
xlabel('Time(s)')
ylabel('CH 10')



%c
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
