clear all;
clc;
data=[ 0 2 18
2 6 16
6 9 15
9 11 14
11 14 12
14 17 10
17 20 6
20 24 5];
p=data(:,3); 
barcycle(data);
axis( [ 0 25 0 20 ] );
title('Load Duration Curve');
xlabel('Time');
ylabel('Power');
grid on