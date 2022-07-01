
%R(s)=u(t)
clc;
clear all;
close all;
t=[0:0.01:5];
g1=1
g2=tf(1,[1 3 2 0])
G=g1*g2
H=feedback(G,1)
hold on
step(H)
stepinfo(H)



%D(s)=(s+z)/z
clc;
clear all;
close all;
z=[1.2 1.5 2 3 5];        %Zeros to be added
t=0:0.1:5;                %Defining the time duration
for i=1:length(z)         %System response after adding zeros
    z_k=z(i);
    g1=tf([1,z(i)],[0,z(i)]);
    g2=tf(1,[1,3,2,0]);
    G=g1*g2;
    H=feedback(G,1);
    hold on;
    step(H)
    stepinfo(H)
end
legend('z=1.2','z=1.5','z=2','z=3','z=5')


%D(s)=p/s+p
clc;
clear all;
close all;
pv = [0.2 0.5 1 1.5 2];    %Poles to be added
t = [0:0.1:5];             %Defining the time duration
 
for i = 1:length(pv)       %System response after adding poles.
    p=pv(1);
    g1 = tf([0 pv(i)], [1 pv(i)]);
    g2 = tf([1],[1 3 2 0])
    G = g1*g2

    H = feedback(G,1);
    hold on
    step(H)
    stepinfo(H)
end
legend('pv=0.2','pv=0.5','pv=1','pv=1.5','pv=2');

%4
clc;
clear all;
close all;
s=tf('s');
td=[0 0.2 0.5 1];   %Values of td
for i=1:length(td)  %Step responses of system after addition of time delay
    g1=exp(-td(i)*s);
    g2=tf(1,[1 3 2 0]);
    G=g1*g2;
    H=feedback(G,1)
    hold on
    step(H)
    stepinfo(H)
end
legend('td=0','td=0.2','td=0.5','td=1')
