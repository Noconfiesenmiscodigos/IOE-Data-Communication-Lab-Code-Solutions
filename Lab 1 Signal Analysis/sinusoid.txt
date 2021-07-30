
t=0:0.1:5;
A=1;
f=1000;
x=A*sin(f*t);
plot(t,x,'g');
hold on
stem(t,x,'r')
title('sinusoid')
xlabel('t')
ylabel('x')
