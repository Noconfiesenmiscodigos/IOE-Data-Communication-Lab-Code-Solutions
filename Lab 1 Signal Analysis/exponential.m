clc;
clear all;
close all;

t=0:.1:10;
x=exp(-t);

figure('Name','Simulation Plot Window')

plot(t,x,'r')


title('exponential signal')

xlabel('t')
ylabel('x(t)')
