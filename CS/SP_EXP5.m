%Program for FFT
clc;
clear all;
close all;
x=input('Enter the seq');
n=input('Enter the length of the sequence');
X=fft(x,n);
stem(X);
xlabel('real');
ylabel('img');
title('FAST FOURIER TRANSFORM');
display(X);

%Program for IFFT
clc;
close all;
clear all;
X=input('Enter the seq');
n=input('Enter the length of the sequence');
x=ifft(X,n);
stem(x);
xlabel('real');
ylabel('img');
title('INVERSE FAST FOURIER TRANSFORM');
display(x);

%Plotting execution time
clear all;
clc;
close all;
Nmax = 3000;
fft_time=zeros(1,Nmax);
for n=1:1:Nmax
x=rand(1,n);
t=clock;
fft(x);
fft_time(n)=etime(clock,t);
end
n=[1:1:Nmax];
bar(n,fft_time)
xlabel('N');
ylabel('Time in Sec');
title('FFT execution times')


%Assignment 1
clc;
close all;
clear all;
x=input('enter sequence');
N=length (x);
a = zeros (1, N) ;
z = zeros (1, N) ;
y=[1:N] ;
p=bitrevorder(y) ;
t=expm (-i*2*pi/N);
for i=1:N
b=p(i);
a(b)=x(i);
end
for m = 1:log2(N)
k = 0 : (2^ (m-1))-1;
j =1 ;
i=1;
for q =1:N / 2
z(i)=a(i)+a(i+2^(m-1))*t^k(j);
z(i+2^(m-1))=a(i)-a(i+2^(m-1))*t^k(j);
j=j+1;
if (mod(i, 2^ (m-1))==0)
i=i+2^(m-1)+1;
j=1;
else i=i+1;
end
end
a=z;
end
k = 0:1:N - 1 ;
subplot (2,1,1);
stem (k, abs (a));
xlabel('k');
ylabel('a');
title('magnitude response')
subplot (2,1,2);
stem(k, angle(a));
title('phase response');