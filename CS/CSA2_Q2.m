clc;
clear all;
close all;
wn=[2:0.5:8];
k=1;
zt=[0.5];
for i=1:length(wn)
    num=k*wn(i)^2;
    den=[1 2*zt*wn(i) wn(i)^2];
    Gs(i)=tf(num,den);
    Data=stepinfo(Gs(i));
    tr(i)=Data.RiseTime;
    tp(i)=Data.PeakTime;
    mp(i)=Data.Overshoot;
    ts(i)=Data.SettlingTime;
    hold on;
end
subplot(2,2,1)
plot(wn,tr)
xlabel('natural frequency')
ylabel('RiseTime')
title('RiseTime')
grid on
subplot(2,2,2)
plot(wn,tp)
xlabel('natural frequency')
ylabel('PeakTime')
title('PeakTime')
grid on
subplot(2,2,3)
plot(wn,mp)
xlabel('natural frequency')
ylabel('OverShoot')
title('OverShoot')
grid on
subplot(2,2,4)
plot(wn,ts)
xlabel('natural frequency')
ylabel('SettlingTime')
title('SettlingTime')
grid on
