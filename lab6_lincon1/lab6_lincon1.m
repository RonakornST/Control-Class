%% 
% 4.02
% 3.62 216.77
% 4.82 482 0.0121
%%
t1sim = out.time1sim;
e1sim = out.u1sim;
v1sim = out.v1sim;
%%
plot(t1sim,v1sim)
stepinfo(v1sim,t1sim)
%%
t2sim = out.time2sim;
e2sim = out.u2sim;
v2sim = out.v2sim;
%%
plot(t2sim,v2sim)
stepinfo(v2sim,t2sim)
%%
t3sim = out.time3sim;
e3sim = out.u3sim;
v3sim = out.v3sim;
%%
plot(t3sim,v3sim)
stepinfo(v3sim,t3sim)
%%
load experiment_wkg_01.log;
m1 = readtable('experiment_wkg_01.log');
t1 = m1.x__Time;
v1 = m1.velocity;
e1 = m1.output;
plot(t1,e1)
%%
t1 = t1(3529:3816) - t1(3529);
v1 = v1(3529:3816);
e1 = m1.output(3529:3816);
plot(t1,v1);
stepinfo(v1,t1)
%%
load experiment_wkg_02.log;
m2 = readtable('experiment_wkg_02.log');
t2 = m2.x__Time;
v2 = m2.velocity;
e2 = m2.output;
plot(t2,v2)
t2 = t2(55:350) - t2(55);
v2 = v2(55:350);
e2 = m2.output(55:350);
plot(t2,v2);
stepinfo(v2,t2)
%%
load experiment_wkg_03.log;
m3 = readtable('experiment_wkg_03.log');
t3 = m3.x__Time;
v3 = m3.velocity;
e3 = m3.output;
plot(t3,v3);
%%
t3 = t3(1967:2544) - t3(1967);
v3 = v3(1967:2544);
e3 = m3.output(1967:2544);
plot(t3,v3);
stepinfo(v3,t3)
%%
plot(t1sim,v1sim,t2sim,v2sim,t3sim,v3sim)
title('Simulation Response of system (Velocity)')
ylabel('Velocity of motor (rpm)')
xlabel('Time(s)')
legend({'Kp = 4.02','Kp = 3.62 Ki = 216.77','Kp = 4.82 Ki = 482 Kd = 0.0121'})
xlim([0 0.5]);
%%
plot(t1,v1,t2,v2,t3,v3)
title('Response of system( Velocity)')
ylabel('Velocity of motor (rpm)')
xlabel('Time(s)')
legend({'Kp = 4.02','Kp = 3.62 Ki = 216.77','Kp = 4.82 Ki = 482 Kd = 0.0121'})
xlim([0 0.5]);
%%
plot(t1sim,e1sim,t2sim,e2sim,t3sim,e3sim)
title('Simulation Control Input Signal of system (Velocity)')
ylabel('Control Input Signal of motor (V)')
xlabel('Time(s)')
legend({'Kp = 4.02','Kp = 3.62 Ki = 216.77','Kp = 4.82 Ki = 482 Kd = 0.0121'})
xlim([0 0.5]);
%%
plot(t1,e1,t2,e2,t3,e3)
title('Control Input Signal of system (Velocity)')
ylabel('Control Input Signal of motor (V)')
xlabel('Time(s)')
legend({'Kp = 4.02','Kp = 3.62 Ki = 216.77','Kp = 4.82 Ki = 482 Kd = 0.0121'})
xlim([0 0.5]);
