%1Up-Sampling by an Integer Factor
n = 0:50;
x= sin(2*pi*0.12*n);
y = zeros(1, 3*length(x));
y([1: 3: length(y)]) = x;
figure
subplot(2,1,1)
stem(n,x);
title('Input Sequence');
xlabel('Time index n');ylabel('Amplitude');
subplot(2,1,2)
stem(n,y(1:length(x)));
title('Output Sequence');
xlabel('Time index n');ylabel('Amplitude');

%2Down-Sampling by an Integer Factor
n = 0: 49;
m = 0: 50*3 - 1;
x = sin(2*pi*0.042*m);
y = x([1: 3: length(x)]);
figure
subplot(2,1,1)
stem(n, x(1:50)); axis([0 50 -1.2 1.2]);
title('Input Sequence');
xlabel('Time index n');
ylabel('Amplitude');
subplot(2,1,2)
stem(n, y);
axis([0 50 -1.2 1.2]);

%3Effect of Down-sampling in the Frequency Domain
freq = [0 0.42 0.48 1]; mag = [0 1 0 0];
x = fir2(101, freq, mag);

[Xz, w] = freqz(x, 1, 512);
figure
subplot(2,1,1);
plot(w/pi, abs(Xz)); grid
xlabel('\omega/\pi'); ylabel('Magnitude');
title('Input Spectrum');

M = 5
y = x([1: M: length(x)]);
% Evaluate and plot the output spectrum
[Yz, w] = freqz(y, 1, 512);
subplot(2,1,2);
plot(w/pi, abs(Yz)); grid
xlabel('\omega/\pi'); ylabel('Magnitude');
title('Output Spectrum');


%4(a)
t = 0:0.01:2;
x = cos (2*pi*t) +cos (8*pi*t) +cos (12*pi*t);
xa=3*cos(2*pi*t);
fs = 5;
T = 1/fs;
tn = 0:T:2;
xn = cos (2*pi*tn) +cos (8*pi*tn) +cos (12*pi*tn);
xan= 3* cos (2*pi*tn);
figure
plot (tn, xn,'.','color','blue');
hold on;
plot (tn, xan,'.','color','black','MarkerSize',15);
hold on;
plot (t, xa, 'color', 'blue');
hold on;
plot(t, x, '--', 'color', 'red');
xlabel ('t(msec)');
ylabel ('x(t), xa(t)');
title('fs = 5kHz')
axis ( [0 2 -4 4]);
grid on

%4(b)
t=0:0.01:2;
x=cos(2*pi*t)+cos(8*pi*t)+cos(12*pi*t);
figure
plot(t,x,'r--');
hold on
fs=10;
T=1/fs;
tn=0:T:2;
xa=cos(2*pi*t)+2*cos(8*pi*t);
plot(t,xa,'b-');
hold on 
xn=cos(2*pi*tn)+cos(8*pi*tn)+cos(12*pi*tn);
plot(tn, xn, 'o','color','black');
xlabel('t (msec)');
ylabel('x(t)&xa(t)');
axis([0 2 -4 4]);
title('fs=10 kHz');
grid on