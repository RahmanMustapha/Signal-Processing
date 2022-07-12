% Problem 2
% d
% Measurement Noise
clear;
% Measurement Function and Initial x value
A=4;
p=0.5;
x(1)=0;
for n=2:10000
    x(n)=A+p*x(n-1);
end
% Additive Noise
noise=randn(1,10000)*2;

M=x+(2*noise)

figure;plot(M)
title('Problem 2-d Measurement with Noise')

mean(M)
var(M)