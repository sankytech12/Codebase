clc;
close all;
clear all;
zt=[0:0.05:1];
zt1=[0.2:0.05:1];
k=[1];
wn=2;
for i=1:length(zt)
    num=k*wn^2;
    den=[1 2*zt(i)*wn wn^2];
    Gs(i)=tf(num,den);
    Data=stepinfo(Gs(i));
    tr(i)=Data.RiseTime;
    tp(i)=Data.PeakTime;
    mp(i)=Data.Overshoot;
    hold on;
end
for i=1:length(zt1)
    num=k*wn^2;
    den=[1 2*zt1(i)*wn wn^2];
    Gs(i)=tf(num,den);
    Data=stepinfo(Gs(i));
    ts(i)=Data.SettlingTime;
    
end
subplot(2,2,1)
plot(zt,tr)
xlabel('zeta')
ylabel('RiseTime')
legend('RiseTime')
title('RiseTime')
grid on
subplot(2,2,2)
plot(zt,tp)
xlabel('zeta')
ylabel('PeakTime')
legend('PeakTime')
title('PeakTime')
grid on
subplot(2,2,3)
plot(zt,mp)
xlabel('zeta')
ylabel('OverShoot')
legend('OverShoot')
title('OverShoot')
grid on
subplot(2,2,4)
plot(zt1,ts)
xlabel('zeta')
ylabel('SettlingTime')
legend('SettlingTime')
title('SettlingTime')
grid on


