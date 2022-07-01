%%Linear Convolution using matlab function
clc
clear all;
x=[1 1 1 1];
h=[1 1 1 1];
disp("Result of convolution is: ");
y=convu(x,h);
disp(y);
subplot(3,1,1);
stem(x);
xlabel('sequence');
ylabel('amplitude x(n)');
title('Linear Convolution');
subplot(3,1,2);
stem(h);
xlabel('sequence');
ylabel('amplitude h(n)');
subplot(3,1,3);
stem(y);
xlabel('sequence');
ylabel('amplitude y(n)');