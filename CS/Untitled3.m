%LINEAR CONVOLUTION
x=[1 1 1 1];
h=[1 1 1 1];
y=conv(x,h);
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


%CIRCULAR CONVOLUTION
clc;
clear all;
N=4;
x=[1,2,2,0];
h=[1,2,3,4];
n=0;
disp('The result of circular convolution is');
for m=1:N;
sum=0;
for k=1:N;
if((m-k)>=0)
n=m-k+1;
else
n=m-k+N+1;
end
sum=sum+x(k)*h(n);
end
disp(sum);
end


%Assignment 1
N=4;
x=[1 2 2 0];
h=[1 2 3 4];
c=cconv (x, h, N);
disp(c);

