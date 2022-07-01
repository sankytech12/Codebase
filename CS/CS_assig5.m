% clc;
% clear all; syms s
% num = sym2poly(0*s+1); den = sym2poly((s+1)); 
% sys = tf(num,den); rlocus(sys)

% clc;
% clear all;
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly(s+1);
% sys=tf(num,den);
% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:5;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')
% 
% clc;
% clear all; syms s
% num = sym2poly(0*s+1);  
% den = sym2poly((s+1)*(s+2)); 
% sys = tf(num,den); 
% rlocus(sys) 

% clc;
% clear all;
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly((s+1)*(s+2));
% sys=tf(num,den);
% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:3;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')


% clc;
% clear all;
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly((s+1)*(s+2));
% sys=tf(num,den);
% k=8.7
% fun=feedback(k*sys,1)
% step(fun)
% pole(fun)
% title('Step Respons')

% clc;
% clear all ; 
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly((s+1)*(s+2)*(s+3));
% sys = tf(num,den);
% rlocus(sys)

% clc;
% clear all ; 
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly((s+1)*(s+2)*(s+3));
% sys = tf(num,den);
% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:3;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')


% clc;
% clear all ; 
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly((s+1)*(s+2)*(s+3));
% sys = tf(num,den);
% k=9.27
% fun=feedback(k*sys,1)
% step(fun)
% pole(fun)
% title('Step Respons')

% clc;
% clear all ; 
% syms s
% num = sym2poly(0*s+1);
% den=sym2poly(s*(s+1)*(s+2));
% sys = tf(num,den);
% rlocus(sys)

% clc;
% clear all ; 
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly(s*(s+1)*(s+2));
% sys=tf(num,den);
% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:3;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')


% clc;
% clear all ; 
% syms s
% num=sym2poly(0*s+1);
% den=sym2poly(s*(s+1)*(s+2));
% sys=tf(num,den);
% k=1.04
% fun=feedback(k*sys,1)
% step(fun)
% pole(fun)
% title('Step Respons')

% clc;
% clear all; 
% syms s
% num = sym2poly(s+0.5);
% den=sym2poly(s*(s+1)*(s+2));
% sys = tf(num,den);
% rlocus(sys)

% clc;
% clear all; 
% syms s
% num = sym2poly(s+0.5);
% den=sym2poly(s*(s+1)*(s+2));
% sys = tf(num,den);
% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:3;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')


% clc;
% clear all; 
% syms s
% num=sym2poly(s+0.5);
% den=sym2poly(s*(s+1)*(s+2));
% sys = tf(num,den);
% k=7.13
% fun=feedback(k*sys,1)
% step(fun)
% pole(fun)
% title('Step Respons')

clc;
clear all;
syms s
num=sym2poly(s+4) ;
den=sym2poly(s*(s+1)*(s+2));
sys=tf(num,den);
k=0.432
fun=feedback(k*sys,1)
step(fun)
pole(fun)
title('Step Respons')


% rlocus(sys)
% hold on
% zeta=0.45;
% A=-10:0.01:3;
% B=-1.98*A;
% plot(A,B)
% legend('Root Locus','zeta=0.45')
