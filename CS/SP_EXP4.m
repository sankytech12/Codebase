clc;
close all;
% input('Enter x(n):\n');
x=[1 2 2 0]
% input('Enter h(n):\n');
h=[1 2 3 4]
m=length(x);%length of sequence x(n)
n=length(h);%length of sequence h(n)
N=max(m,n);%length of output sequence y(n)
%For equating both sequence length
x=[x,zeros(1,N-m)];
h=[h,zeros(1,N-n)];
n=0:N-1
X=fft(x);%DFT of sequence x(n)
H=fft(h);%DFT of sequence h(n)
%performing element-wise multiplication
Y=X.*H;%DFT of output sequence y(n)
y=ifft(Y);%IDFT of Y(k)
subplot(311)
disp('First Sequence x(n) is:')
disp(x)
stem(n,x)
xlabel('n')
ylabel('x(n)')
title('First Sequence')
grid on;
subplot(312)
disp('Second Sequence h(n) is:')
disp(h)
stem(n,h)
xlabel('n')
ylabel('h(n)')
title('Second Sequence')
grid on;
subplot(313)
disp('Convoluted Sequence Y(n) is:')
disp(y)
stem(n,y)
xlabel('n')
ylabel('Y(n)')
title('Circular Convoluted Sequence')
grid on;
%2
clc
clear all
close all
x=[1 2 2 0];
y=[1 2 3 4];
c=cconv(x,y,4)



%Method 2: Circular convolution using DFT and IDFT:
clc
close all;
clear all;
% x=input('enter the value of first input sequence');
x=[1 2 2 0];
disp('1st i/p sequence is');
disp(x);
% h=input('enter the values of 2nd dft sequence');
h=[1 2 3 4];
disp('2nd i/p sequence is');
disp(h);
lx=length(x);
lh=length(h);
N=max(lx,lh);
xx=[x zeros(N-lx)];
HH=[h zeros(N-lh)];
W=zeros(N,N);
for n=0:N-1
for k=0:N-1
W(n+1,k+1)=exp(-i*2*pi*n*k/N);
end;
end;
X=W*xx.';
H=W*HH.';
disp('DFT of 1st sequence is');
disp(X.');
disp('DFT of 2nd sequence is');
disp(H.');
figure
subplot(2,1,1);
stem(x);
title('1st i/p sequence');
subplot(2,1,2);
compass(X);
title('dft of 1st sequence');
figure
subplot(2,1,1);
stem(h);
title('2nd i/p sequence');
subplot(2,1,2);
compass(H);
title('dft of 2nd sequence');
YY=X.*H;
w=zeros(N,N);
for n=0:N-1
for k=0:N-1
w(n+1,k+1)=exp(i*2*pi*n*k/N);
end;
end;
B=w*YY;
Y=B/N;
disp('Dft of o/p sequence is');
disp(YY.');
disp('IDFT of o/p sequence is');
disp(Y.');
figure
subplot(2,1,1)
compass(YY);
title('o/p DFT sequence of result');
subplot(2,1,2);
compass(Y);
title('circular convoluted o/p');

%3
clc
clear all;
close all;
t = 0:1e-3:1000e-3;
y0 = 5*sin(2*pi*t)+5*sin(6*pi*t);
figure(1),
subplot(2,1,1),plot(t,y0,'--');
xlabel('t');ylabel('x(t)'),hold on
subplot(2,1,2),plot(t,y0,'--');
xlabel('t');ylabel('x(t)'),hold on
figure(2),
subplot(2,1,1),plot(t,y0,'--');
xlabel('t');ylabel('x(t)'),hold on
subplot(2,1,2),plot(t,y0,'--');
xlabel('t');ylabel('x(t)'),hold on
t1 = 0:1/120:1000e-3; % (a) Ts = 1/18s;
y1 = 5*sin(2*pi*t1)+5*sin(6*pi*t1);
figure(1)
subplot(2,1,1),stem(t1,y1,'fill');
title('T_s=1/18s'),hold off
t2 = 0:1/60:1000e-3; % (b) Ts = 1/12s;
y2 = 5*sin(2*pi*t2)+5*sin(6*pi*t2);
figure(1)
subplot(2,1,2),stem(t2,y2,'fill');
title('T_s=1/12s'),hold off
t3 = 0:1/30:1000e-3; % (c) Ts = 1/6s;
y3 = 5*sin(2*pi*t3)+5*sin(6*pi*t3);
figure(2)
subplot(2,1,1),stem(t3,y3,'fill');
title('T_s=1/6s'),hold off
t4 = 0:1/15:1000e-3; % (d) Ts = 1/3s;
y4 = 5*sin(2*pi*t4)+5*sin(6*pi*t4);
figure(2)
subplot(2,1,2),stem(t4,y4,'fill');
title('T_s=1/3s'),hold off

%4
clc
clear all;
close all;
t = 0:1/10:10-1/100;
x = 5*sin(2*pi*t)+5*sin(6*pi*t);
y = fft(x); % Compute DFT of x
m = abs(y); % Magnitude
y(m<1e-6) = 0;
p = unwrap(angle(y)); % Phase
f = (0:length(y)-1)*100/length(y); % Frequency vector
figure(3)
subplot(2,1,1)
plot(f,m)
title('Magnitude')
ax = gca;
ax.XTick = [25 50 75 100];
subplot(2,1,2)
plot(f,p*180/pi)
title('Phase')
ax = gca;
ax.XTick = [25 50 75 100];