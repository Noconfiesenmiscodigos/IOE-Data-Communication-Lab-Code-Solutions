clc;
clear all;
close all;
 
%Properties of DT Systems(Linearity)
%y(n)=x(n)+B;
 
x1=input('Enter first input sequence:');
n=length(x1);
x2=input('Enter second input sequence:');
a=input('Enter scaling constant(a):');
b=input('Enter scaling constant(b):');
B=input('Enter scaling constant(B):');
 
y1=x1+B;
y2=x2+B;
%applying superposition and homogeneity to the output side:
rhs=a*y1+b*y2;
%applying superposition and homogeneity to the input we have:
x3=a*x1+b*x2;
%the output produced by this input is:
lhs=x3+B;
subplot(2,2,1);
stem(0:n-1,x1);
xlabel('Time');
ylabel('Amplitude');
title('First input sequence');
subplot(2,2,2);
stem(0:n-1,x2);
xlabel('Time');
ylabel('Amplitude');
title('Second input sequence');
subplot(2,2,3);
stem(0:n-1,lhs);
xlabel('Time');
ylabel('Amplitude');
title('LHS');
subplot(2,2,4);
stem(0:n-1,rhs);
xlabel('Time');
ylabel('Amplitude');
title('RHS');
 
if(lhs==rhs)
    display('system is linear');
else
    display('system is non-linear');
end;
