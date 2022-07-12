clear;


ini1 = 0.1;
ini2 = 0.10001;
a = 0.8;
a1 = 3.24;
a2 = 4.0;
lag=-100:100;

%Time Series
x1a(1) = ini1;
for n = 2:1000
    x1a(n)=a*x1a(n-1)+randn;
end
auto1a=xcov(x1a, 100,'coeff');
x1b(1) = ini2;
for n = 2:1000
    x1b(n)=a*x1b(n-1)+randn;
end
auto1b=xcov(x1b, 100,'coeff');

x2a(1)=ini1;
for n = 2:1000
    x2a(n)=a1*x2a(n-1)*(1-x2a(n-1));
end
auto2a=xcov(x2a, 100,'coeff');
x2b(1)=ini2;
for n = 2:1000
    x2b(n)=a1*x2b(n-1)*(1-x2b(n-1));
end
auto2b=xcov(x2b, 100,'coeff');

x3a(1)=ini1;
for n = 2:1000
    x3a(n)=a2*x3a(n-1)*(1-x3a(n-1));
end
auto3a=xcov(x3a, 100,'coeff');
x3b(1)=ini2;
for n = 2:1000
    x3b(n)=a2*x3b(n-1)*(1-x3b(n-1));
end
auto3b=xcov(x3b, 100,'coeff');

x4a(1)=ini1;
for n = 2:1000
    x4a(n)=randn;
end
auto4a=xcov(x4a, 100,'coeff');
x4b(1)=ini2;
for n = 2:1000
    x4b(n)=randn;
end
auto4b=xcov(x4b, 100,'coeff');

%Autocorrelation Plot
figure;
subplot(4,2,1);
plot(lag,auto1a,'k');
subplot(4,2,2);
plot(lag,auto1b,'k');
subplot(4,2,3);
plot(lag,auto2a,'k');
subplot(4,2,4);
plot(lag,auto2b,'k');
subplot(4,2,5);
plot(lag,auto3a,'k');
subplot(4,2,6);
plot(lag,auto3b,'k');
subplot(4,2,7);
plot(lag,auto4a,'k');
subplot(4,2,8);
plot(lag,auto4b,'k');

%Return Plot
figure;
subplot(4,2,1);
plot(x1a(1:999),x1a(2:1000),'o');
subplot(4,2,2);
plot(x1b(1:999),x1b(2:1000),'o');
subplot(4,2,3);
plot(x2a(1:999),x2a(2:1000),'o');
subplot(4,2,4);
plot(x2b(1:999),x2b(2:1000),'o');
subplot(4,2,5);
plot(x3a(1:999),x3a(2:1000),'o');
subplot(4,2,6);
plot(x3b(1:999),x3b(2:1000),'o');
subplot(4,2,7);
plot(x4a(1:999),x4a(2:1000),'o');
subplot(4,2,8);
plot(x4b(1:999),x4b(2:1000),'o');