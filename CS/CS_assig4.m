% 1
clc;
close all;
clear all;
% ki = 0 ;
% kd = 0 ;
% kp = [1 2 4 5];
% t=[0:0.01:5];
% G=tf([1],[1,2,4]);
% for i=1:length(kp)
% D = pid(kp(i),ki,kd)
% H=feedback (G*D,1)
% hold on
% step(H)
% stepinfo(H)
% end
% grid on
% legend(' Kp = 1 ', 'Kp = 2 ', 'Kp=4', 'Kp=5')
% xlabel('Time')
% ylabel('Step Response')
% title('Step Response vs Time')





% %2
% clc;
% clear all;
% close all;
% kp = 2 ;
% kd = 0;
% ki = [1 4 7 10] ;
% G = tf([1], [1, 2, 4]) ;
% t=[0:0.01:5];
% for i=1:length(ki)
% D = pid(kp,ki(i),kd);
% H= feedback (G*D,1);
% hold on
% step(H)
% stepinfo(H)
% end
% grid on
% legend(' Ki = 1' , 'Ki=2', 'Ki=4', 'Ki=5')
% xlabel('Time')
% ylabel('Step Response')
% title('Step Response vs Time')






%3
% 
% Kp=4;
% Ki = 5;
% Kd = [1 3 5 7] ;
% G=tf([1],[1,2,4]);
% for td=1:4
% 	D=pid(Kp,Ki,Kd(td))
% 	%D=tf([Kd Kp Kd(td)],[1 0]);
% 	H(td)=feedback(G*D,1);
% 	stepinfo(H(td))
% end
% step(H(1),H(2),H(3),H(4))
% grid on
% legend('Kp=1', 'Kp=3', 'Kp=5', 'Kp=7')
% xlabel('Time')
% ylabel('Step Response')
% title('Step Response vs Time')









plot(out.ip1.Time,out.ip1.Data);
hold on;
plot (out. P.Time, out. P. Data);
hold on;
plot (out.PI.Time, out.PI.Data);
hold on;
plot (out.PID. Time, out.PID. Data);
hold on;
grid on;
legend(' Input ', 'P','PI', 'PID');
xlabel('Time');
ylabel('Response Output');




