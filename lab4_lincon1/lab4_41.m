%ex_x = 1:1e-3:5;
%ex_y = (2.^(-ex_x)).*(ex_x.^2);
%plot(ex_y,ex_x);
%%
load experiment_4_1_fix.log;
m1 = readtable('experiment_4_1_fix.log');
t1 = m1.x__Time;
w = m1.position;
t1 = t1(83:5530) - t1(83);
w = w(83:5530)
plot(t1,w);
stepinfo(w,t1)
%%
load experiment_4_3_fix.log;
m2 = readtable('experiment_4_3_fix.log');
t2 = m2.x__Time;
w2 = m2.position;
t2 = t2(413:16392) - t2(413);
w2 = w2(413:16392)
plot(t2,w2);
stepinfo(w2,t2)
%%
load experiment_4_2_fix.log;
m3 = readtable('experiment_4_2_fix.log');
t3 = m3.x__Time;
w3 = m3.position;
t3 = t3(72:1090) - t3(72);
w3 = w3(72:1090);
plot(t3,w3);
stepinfo(w3,t3)
%%
plot(t1,w,t3,w3,t2,w2)
%plot(t3,w,t3,w3,t3,w2)
xlim([-0.6 9])
title('Response of system(Theta)')
ylabel('Position of motor (deg)')
xlabel('Time(s)')
legend({'Kp = 1 Kd = 0.0629','Kp = 1 Kd = 0.01','Kp = 0.08 Kd = 0.0629'})
