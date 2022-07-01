%exp 3
clc;
clear all;
close all;
x=input('Enter the no. of bus');
for i=1:1:x
    for j=1:1:x
        if(i==j)
            a(i,j)=input(strcat('Enter the value of Admittance Y',int2str(i),int2str(0),':'));
        else
            a(i,j)=input(strcat('Enter the value of Admittance Y',int2str(i),int2str(j),':'));
        end
    end
end
b=a;
y=0;
for i=1:1:x
    for j=1:1:x
        if(i==j)
            for k=1:1:x
                y=y+b(i,k);
            end
            a(i,j)=y;
            y=0;
        else
            a(i,j)=-b(i,j);
        end
    end
end
Input_Matrix=b
disp('For given single line reactance bus diagram,')
Y_Bus=a

%exp 2
clc;
clear all;
close all;
Vm = 100; thetaV = 0;    % Voltage magnitude and phase angle
Z = 1.25; gama = 60;      % Impedance magnitude and phase angle
thetaI = thetaV-gama; % Current Phase angle in degree
theta = (thetaV-thetaI)*pi/180; % Degree to radian
Im = Vm/Z; % Current amplitude
wt = 0:0.05:2*pi; % wt from 0 t0 2*pi
v = Vm*cos(wt); % Instantaneous voltage
i = Im*cos(wt+thetaI*pi/180); % Instantaneous current
p = v.*i; % Instantaneous power
Vrms = Vm/sqrt(2); % rms voltage
Irms = Im/sqrt(2); % rms current
P = Vrms*Irms*cos(theta); % Real power
Q = Vrms*Irms*sin(theta); % Reactive power
S = P + j*Q; % Complex power
pr = P*(1+cos(2*(wt+thetaV))); % Instantaneous real power
px = Q*sin(2*(wt+thetaV)); % Instantaneous reactive power
pp = P*ones(1, length(wt)); % Average power of length wt
xline = zeros(1, length(wt)); % Generates a zero vector
wt = wt*180/pi; % radian to degree
subplot(2,2,1);
plot(wt, v, wt, i, wt, xline), grid
title(['v(t)=Vm cos(wt), i(t)=Im cos(wt+(', num2str(thetaI), '))']);
xlabel('wt in degree');
ylabel('volt & ampere');
subplot(2,2,2);
plot(wt, p, wt, xline), grid
title('p(t)=v(t).i(t)');
xlabel('wt in degree');
ylabel('Watt');
subplot(2,2,3);
plot(wt, pr, wt, pp, wt, xline), grid
title('pr(t), Active Power');
xlabel('wt in degree');
ylabel('Watt');
subplot(2,2,4);
plot(wt, px, wt, xline), grid
title('px(t), Reactive Power');
xlabel('wt in degree');
ylabel('Var');
subplot(111)

         