g = tf([17.7004],[0.3704 1 0]);
c1 = tf([0.208 2.825],[1]);
c2 = tf([0.0275],[0.26])
% c1 2.825 + 0.208s
%0.26 + 0.0275s
%%
bode(g)
margin(g)
%%
kc1 = g * c1;
bode(kc1)
margin(kc1)
%%
kc2 = g * c2;
bode(kc2)
margin(kc2)
%%
thetha = out.thetas;
volt = out.cv;
t = out.ts;
%%
plot(t,thetha)
%%
thethakc1 = out.thetas;
voltkc1 = out.cv;
tkc1 = out.ts;
%%
plot(tkc1,thethakc1)
%%
thethakc2 = out.thetas;
voltkc2 = out.cv;
tkc2 = out.ts;
%%
plot(tkc2,thethakc2)
%% ramp c1
load experiment_c1.log;
mr1 = readtable('experiment_c1.log');
tr1 = mr1.x__Time;
wr1 = mr1.position;
vr1 = mr1.output;
%t1 = t1(83:5530) - t1(83);
%w = w(83:5530)
tr1 = tr1 - tr1(1);
plot(tr1,wr1);
%% ramp c2
load experiment_c2.log;
mr2 = readtable('experiment_c2.log');
tr2 = mr2.x__Time;
wr2 = mr2.position;
vr2 = mr2.output;
%t1 = t1(83:5530) - t1(83);
%w = w(83:5530)
tr2 = tr2 - tr2(1);
plot(tr2,wr2);
%%
load experiment_001step.log;
ms1 = readtable('experiment_001step.log');
ts1 = ms1.x__Time;
ws1 = ms1.position;
vs1 = ms1.output;
inputs1 = ms1.reference;
%t1 = t1(83:5530) - t1(83);
%w = w(83:5530)
ts1 = ts1 - ts1(1);
ws11 = ws1(3001:3501);
ts11 = ts1(3001:3501);
%plot(ts11,ws11);
plot(ts1,ws1)
%xlim([3 3.5])
stepinfo(ws11,ts11)
%%
load experiment_002step.log;
ms2 = readtable('experiment_002step.log');
ts2 = ms2.x__Time;
ws2 = ms2.position;
vs2 = ms2.output;
inputs2 = ms2.reference;
%t1 = t1(83:5530) - t1(83);
%w = w(83:5530)
ts2 = ts2 - ts2(1);
plot(ts2,ws2);
xlim([3.7 4.2])
ws22 = ws2(3701:4201);
ts22 = ts2(3701:4201);
plot(ts22,ws22);
stepinfo(ws22,ts22)
%% find ess of step input

%plot(ts1,ws1)
%essOfS1 = mean(abs(vs1-inputs1))
%plot(ts1,ws1,ts1,inputs1)

% กราฟแกว่งจัดๆ 
slice_ws1 = ws1(251:501);
slice_inputs1 = inputs1(251:501);
slice_ts1 = ts1(251:501);
plot(slice_ts1,slice_ws1,slice_ts1,slice_inputs1)
%essOfS1 = mean(slice_inputs1-slice_ws1);
percent_essOfS1 = mean((slice_inputs1-slice_ws1)/slice_inputs1);
% ess = 0.0982%

% ดูกราฟ step of c2 ess input = 143, ess position = 120 
% ดังนั้น %error = (143-120)/143 = 0.1608
%plot(ts2,ws2,ts2,inputs2)
xlim([0,4])
%%
plot(ts1,ws1,ts2,ws2)
title('System response to step input with C1 and C2 controller')
ylabel('Position of motor (deg)')
xlabel('Time(s)')
legend({'C1','C2',})
xlim([0 4]);
%%
plot(tr1,wr1,tr2,wr2)
title('System response to ramp input with C1 and C2 controller')
ylabel('Position of motor (deg)')
xlabel('Time(s)')
legend({'C1','C2',})
xlim([0 4]);
%%
plot(ts1,vs1,ts2,vs2)
title('Control voltage of step input system for C1 and C2 controller')
ylabel('Control voltage (V)')
xlabel('Time(s)')
legend({'C1','C2',})
%xlim([0 5.1]);
%%
plot(tr1,vr1,tr2,vr2)
title('Control voltage of ramp input system for C1 and C2 controller')
ylabel('Control voltage (V)')
xlabel('Time(s)')
legend({'C1','C2',})
%xlim([0 5.1]);