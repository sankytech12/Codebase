% %1
% clc;
% close all;
% clear all;
% zeta = [0.1:0.2:0.9];
% wn = 2;
% for i=1:length(zeta)
%    z=[];
%    p = roots([1 2*zeta(i)*wn 0]);
%    k = wn^2;
%    [num,den] = zp2tf(z,p,k);
%    sys1(i) = zpk(z,p,k);
%    G = tf(num,den);
%    sys(i)=feedback(G,1);
%    fdata(i)=allmargin(sys1(i));
%    Pm(i)=fdata(i).PhaseMargin;
%    time(i)=stepinfo(sys(i));
%    Mp(i)=time(i).Overshoot;
% end
% subplot(2,1,1);
% plot(zeta,Pm);
% title('Phase Margin vs zeta');
% xlabel('zeta');
% ylabel('Phase margin');
% grid on;
% subplot(2,1,2);
% plot(Mp,Pm);
% title('Phase Margin vs Peak Overshoot');
% xlabel('Peak Overshoot');
% ylabel('Phase margin');
% grid on;



%2
% clc;
% clear all;
% close all;
% zeta = 0.5;
% wn = [0.8:0.1:8];
% for i=1:length(wn)
%    z=[];
%    p = roots([1 2*zeta*wn(i) 0]);
%    k = wn(i)^2;
%    [num,den] = zp2tf(z,p,k);
%    sys1(i) = zpk(z,p,k);
%    G = tf(num,den);
%    sys(i)=feedback(G,1);
%    fdata(i)=allmargin(sys1(i));
%    Pm(i)=fdata(i).PhaseMargin;
%    time(i)=stepinfo(sys(i));
%    tr(i)=time(i).RiseTime;
%    wb(i) = bandwidth(sys(i));
%    wgc(i) = getGainCrossover(sys1(i),k);
% end
% subplot(3,1,1);
% plot(wn,Pm);
% title('Phase Margin vs natural frequency');
% xlabel('natural frequency');
% ylabel('Phase margin');
% grid on;
% subplot(3,1,2);
% plot(tr,wb);
% title('Bandwidth vs Rise Time');
% xlabel('Rise Time');
% ylabel('Bandwidth');
% grid on;
% subplot(3,1,3);
% plot(tr,wgc);
% title('Gain Crossover vs Rise Time');
% xlabel('Rise Time');
% ylabel('Gain Crossover');
% grid on;

%3

K = [0.1:0.2:5.5];
for i=1:length(K)
   z=[];
   p = [0 -1 -2];
   k=K(i);
   [num,den] = zp2tf(z,p,k);
   sys1(i) = zpk(z,p,k);
   G = tf(num,den);
   sys(i)=feedback(G,1);
   fdata(i)=allmargin(sys1(i));
   Pm(i)=fdata(i).PhaseMargin;
   time(i)=stepinfo(sys(i));
   tr(i)=time(i).RiseTime;
   Mp(i)=time(i).Overshoot;
   wb(i) = bandwidth(sys(i));
   wgc(i) = getGainCrossover(sys1(i),k);
end
subplot(3,1,1);
plot(Mp,Pm);
title('Phase Margin vs Overshoot');
xlabel('Overshoot');
ylabel('Phase margin');
grid on;
subplot(3,1,2);
plot(tr,wb);
title('Bandwidth vs Rise Time');
xlabel('Rise Time');
ylabel('Bandwidth');
grid on;
subplot(3,1,3);
plot(tr,wgc);
title('Gain Crossover vs Rise Time');
xlabel('Rise Time');
ylabel('Gain Crossover');
grid on;

