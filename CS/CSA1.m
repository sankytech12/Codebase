clc;
close all;
clear all;
plot(out.simout.Time,out.simout.Data);
hold on
plot(out.simout1.Time,out.simout1.Data);
grid on
legend('simout','simout1')
xlabel('t')
ylabel('output')

