clear;

clear;
load('eegNeoSeizure.mat');
plot(T,eeg);
xlabel('Time(seconds)');
ylabel('Amplitude(uV)');


Y1=sin(2*pi*0.5*T);
Y2=sin(2*pi*1*T);
Y3=sin(2*pi*2*T);
Y4=sin(2*pi*10*T);
Y5=sin(2*pi*15*T);

%a 
Ts = 0.003906250000000;
Fs = 1/Ts;
%Sampling Frequency is the inverse of the Sampling interval which we can find
%as the time it takes for each sample to record
%Fs = 256 Hz

%b
%waveletAnalyzer;
wname = 'morl';
scales = (1:512);
signal = eeg;
coefs = cwt(signal,scales,wname);
figure; 
SCimg = wscalogram('image',coefs); 
colormap hot;

%c
signal1 = Y1;
coefs1 = cwt(signal1,scales,wname);
figure; 
SCimg1 = wscalogram('image',coefs1); 
colormap hot;

signal2 = Y2;
coefs2 = cwt(signal2,scales,wname);
figure; 
SCimg2 = wscalogram('image',coefs2); 
colormap hot;

signal3 = Y3;
coefs3 = cwt(signal3,scales,wname);
figure; 
SCimg3 = wscalogram('image',coefs3); 
colormap hot;

signal4 = Y4;
coefs4 = cwt(signal2,scales,wname);
figure; 
SCimg4 = wscalogram('image',coefs4); 
colormap hot;

signal5 = Y5;
coefs5 = cwt(signal5,scales,wname);
figure; 
SCimg5 = wscalogram('image',coefs5); 
colormap hot;
 
%d
spectrogram(eeg,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 15]);

%e
figure;
spectrogram(Y1,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 15]);

figure;
spectrogram(Y2,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 15]);

figure;
spectrogram(Y3,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 15]);

figure;
spectrogram(Y4,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 15]);

figure;
spectrogram(Y5,2048,2000,2048,256,'yaxis');
caxis([-5 35]);
colormap hot;
ylim([0 20]);