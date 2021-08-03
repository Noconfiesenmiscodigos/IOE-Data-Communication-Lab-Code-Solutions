clc
clear all
close all
t=0:0.001:1;
saw=sawtooth(2*pi*10*t);
msg=0.75*sin(2*pi*1*t);
n=length(saw);
for i=1:n
if (msg(i)>=saw(i))
pwm(i)=1;
elseif (msg(i)<=saw(i))
pwm(i)=0;
end
end
subplot(2,1,1)
plot(t,msg,'k',t,saw,'--b','linewidth',2)
legend('messsge','sawtooth');
grid on;
subplot(2,1,2)
plot(t,pwm,'r','linewidth',3);
title('PWM wave');axis([0 1 -0.1 1.1]); % show graph horizontally from 0 to 1 and vertically from -0.1 to 1.1
grid on;

