%%
load experiment_005_3.log;
m1 = readtable('experiment_005.log');
t1 = m1.x__Time;
w1 = m1.position;
t1 = t1(3494:6334) - t1(3494);
w1 = w1(3494:6334) - 7;
e1 = m1.output(3494:6334);
plot(t1,w1);
stepinfo(w1,t1)
%%
load experiment_007.log;
m2 = readtable('experiment_007.log');
t2 = m2.x__Time;
w2 = m2.position;
t2 = t2(3744:6650) - t2(3744);
w2 = w2(3744:6650);
e2 = m2.output(3744:6650);
plot(t2,w2);
stepinfo(w2,t2)
%%
t = out.time;
e = out.controlsignal;
theta = out.thetas * 100;
plot(t,theta,t,e)
stepinfo(theta,t)
%%
plot(t,theta,t1,w1,t2,w2)
title('Response of system(Theta)')
ylabel('Position of motor (deg)')
xlabel('Time(s)')
legend({'simulation Kp = 0.26 Kd = 0.0275','Kp = 0.26 Kd = 0.0275','Kp = 2 Kd = 0.05'})
%%
plot(t,e,t1,e1,t2,e2)
title('Response of system(Theta)')
ylabel('Position of motor (deg)')
xlabel('Time(s)')
legend({'simulation Kp = 0.26 Kd = 0.0275','Kp = 0.26 Kd = 0.0275','Kp = 2 Kd = 0.05'})
xlim([0 5.1]);
%%