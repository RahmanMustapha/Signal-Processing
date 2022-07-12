clear;
close all;

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

filter = fir1(6000,[0.25 0.75]);
y1 = filtfilt(filter, 1, EEG(1,:));
y1a=hilbert(EEG(1,:));                   % compute the analytic signal
Amp1=abs(y1a);                           % amplitude of the signal
Phase1=atan2(imag(y1a),real(y1a));		% instantaneous phase

y2 = filtfilt(filter, 1, EEG(2 ,:));
y2a=hilbert(EEG(2 ,:));                   
Amp2 =abs(y2a);                           
Phase2 =atan2(imag(y2a),real(y2a));

y3 = filtfilt(filter, 1, EEG(3 ,:));
y3a=hilbert(EEG(3 ,:));                   
Amp3 =abs(y3a);                           
Phase3 =atan2(imag(y3a),real(y3a));

y4 = filtfilt(filter, 1, EEG(4 ,:));
y4a=hilbert(EEG(4 ,:));                   
Amp4 =abs(y4a);                           
Phase4 =atan2(imag(y4a),real(y4a));

y5 = filtfilt(filter, 1, EEG(5 ,:));
y5a=hilbert(EEG(5 ,:));                   
Amp5 =abs(y5a);                           
Phase5 =atan2(imag(y5a),real(y5a));

y6 = filtfilt(filter, 1, EEG(6 ,:));
y6a=hilbert(EEG(6 ,:));                   
Amp6 =abs(y6a);                           
Phase6 =atan2(imag(y6a),real(y6a));

y7 = filtfilt(filter, 1, EEG(7 ,:));
y7a=hilbert(EEG(7 ,:));                   
Amp7 =abs(y7a);                           
Phase7 =atan2(imag(y7a),real(y7a));

y8 = filtfilt(filter, 1, EEG(8 ,:));
y8a=hilbert(EEG(8 ,:));                   
Amp8 =abs(y8a);                           
Phase8 =atan2(imag(y8a),real(y8a));

y9 = filtfilt(filter, 1, EEG(9 ,:));
y9a=hilbert(EEG(9 ,:));                   
Amp9 =abs(y9a);                           
Phase9 =atan2(imag(y9a),real(y9a));

y10 = filtfilt(filter, 1, EEG(10 ,:));
y10a=hilbert(EEG(10 ,:));                   
Amp10 =abs(y10a);                           
Phase10 =atan2(imag(y10a),real(y10a));

figure;
subplot(5,1,1);
sgtitle('Filtered Seizure Signal (black) Amplitudes (red), Phases (green) via Hilbert Transform')
plot(t,y1,'k');hold;
plot(t,Amp1,'r');
plot(t,Phase1,'g');
ylabel('CH 1');


subplot(5,1,2);
plot(t,y2,'k');hold;
plot(t,Amp2,'r');
plot(t,Phase2,'g');
ylabel('CH 2');



subplot(5,1,3);
plot(t,y3,'k');hold;
plot(t,Amp3,'r');
plot(t,Phase3,'g');
ylabel('CH 3');



subplot(5,1,4);
plot(t,y4,'k');hold;
plot(t,Amp4,'r');
plot(t,Phase4,'g');
ylabel('CH 4');



subplot(5,1,5);
plot(t,y5,'k');hold;
plot(t,Amp5,'r');
plot(t,Phase5,'g');
ylabel('CH 5');



figure;
subplot(5,1,1);
sgtitle('Filtered Seizure Signal (black) Amplitudes (red), Phases (green) via Hilbert Transform')
plot(t,y6,'k');hold;
plot(t,Amp6,'r');
plot(t,Phase6,'g');
ylabel('CH 6');


subplot(5,1,2);
plot(t,y7,'k');hold;
plot(t,Amp7,'r');
plot(t,Phase7,'g');
ylabel('CH 7');



subplot(5,1,3);
plot(t,y8,'k');hold;
plot(t,Amp8,'r');
plot(t,Phase8,'g');
ylabel('CH 8');


subplot(5,1,4);
plot(t,y9,'k');hold;
plot(t,Amp9,'r');
plot(t,Phase9,'g');
ylabel('CH 9');



subplot(5,1,5);
plot(t,y10,'k');hold;
plot(t,Amp10,'r');
plot(t,Phase10,'g');
ylabel('CH 10');






