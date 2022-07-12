clear;

clear;
R=10^4;
C=3.3e-6;

n=1;
for k=0.3:.1:1000;
    f(n)=k;
                    
    r(n)= 20*log10(sqrt((1/(1-j/((R*C*2*pi*k))^2))));
    n=n+1;
end;

fm=[0.3 0.5 1 2 5 10 20 50 100 200 500 1000 ];
db=[-25.38 -19.36 -14.67 -9.21 -0.70 0 0 ...
    0 0 0 0 0];

% plot results
figure;
semilogx(f,r,'k');
hold;
semilogx(fm,db,'ko');
axis([0.3 1000 -50 1]);
title ('High Pass Measured (o) and Calculated (line) Amplitude Ratio');
xlabel('Frequency (Hz)');
ylabel('Output/Input Ratio (dB)');
