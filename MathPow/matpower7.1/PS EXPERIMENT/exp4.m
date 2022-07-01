clc;
clear all;

% loading of the case data
k=loadcase('case14')

%run power flow
y=runpf(k);

%change in exictation
e=k;
e.gen(:,6)=1.05*e.gen(:,6);
i=runpf(e);

%after load flow voltage
m=y.bus(:,8);
h=i.bus(:,8);
r=((h-m)./h)*100;
t=[m h r]
plot(r)