clear;

%a Sensitivity to change in initial condition
x(1) = .8;
for n = 2:1000
    x(n)=4*x(n-1)*(1-x(n-1));
end
figure;hold;
plot(x(1:500),'k')
y(1)=0.799999;
for n = 2:1000
    y(n)=4*y(n-1)*(1-y(n-1));
end
plot(y(1:500),'r')

%b. Autocorrelation failure
auto=xcov(x, 100,'coeff');
lag=-100:100;
figure;
plot(lag,auto,'k');

%Relationship from return plot
%Parabola with maximum at 1
figure;
plot(x(1:999),x(2:1000),'o');
