%%
Gain = [17.7004 17.5077 17.3152 16.2050 11.6496 6.9203 3.5814 1.4517 0.7085 0.3435 0.0908];
dBgain = log10(Gain);
bodegain = 20*dBgain;
freq = [0.02 0.05 0.1 0.2 0.5 1 2 5 10 20 50];
omega = 2*pi*freq;
semilogx(omega,bodegain)
ph = [-2.6040 -6.3684 -12.5146 -23.7836 -48.5321 -67.5927 -80.8516 -95.5742 -111.2375 -138.6712 -217.8254];
%semilogx(omega,ph)
title('Gain plot')
ylabel('Gain(dB)')
xlabel('Angular velocity(rad/sec)')
grid on
%%
% 0.02 hz
ans1 = readtable('0.02.log');
f = 0.02;
t = ans1.x__Time(18170:194351,:);
b = ans1.velocity(18170:194351,:);
volt = ans1.output(18170:194351,:);
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
%plot(ans1.x__Time,ans1.velocity)
x = a\b;
x = x*2*pi/60/max(volt); 
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2) 
phasew = atan2d(c2,c1);

x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atan2d(c21,c11);
phasedif = phasew - phasev
%%
% 0.1 hz
ans1 = readtable('0.1.log');
f = 0.1;
t = ans1.x__Time(18170:194351,:);
b = ans1.velocity(18170:194351,:);
volt = ans1.output(18170:194351,:);
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans1.x__Time,ans1.velocity)
x = a\b;
x = x*2*pi/60/max(volt); 
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2) 
phasew = atan2d(c2,c1);

x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atan2d(c21,c11);
phasedif = phasew - phasev
%%
% 0.05hz
ans2 = readtable('0.05Hz.txt');
ans2=ans2(10678:21801,:);
f = 0.05;
t = ans2.x__Time;
b = ans2.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans2.x__Time,ans2.velocity)
x = a\b;
x = x*2*pi/60/max(ans2.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans2.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 0.1hz
ans3 = readtable('0.1Hz.txt');
ans3=ans3(2293:7743,:);
f = 0.1;
t = ans3.x__Time;
b = ans3.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans3.x__Time,ans3.velocity)
x = a\b;
x = x*2*pi/60/max(ans3.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans3.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 0.2hz
ans4 = readtable('0.2Hz.txt');
ans4 = ans4(1764:4560,:);
f = 0.2;
t = ans4.x__Time;
b = ans4.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans4.x__Time,ans4.velocity)
x = a\b;
x = x*2*pi/60/max(ans4.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans4.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 0.5hz
ans5 = readtable('0.5Hz.txt');
ans5 = ans5(1021:2065,:);
f = 0.5;
t = ans5.x__Time;
b = ans5.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans5.x__Time,ans5.velocity)
x = a\b;
x = x*2*pi/60/max(ans5.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans5.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 1hz
ans6 = readtable('1Hz.txt');
ans6 = ans6(20027:20584,:);
f = 1;
t = ans6.x__Time;
b = ans6.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans6.x__Time,ans6.velocity)
x = a\b;
x = x*2*pi/60/max(ans6.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans6.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 2hz
ans7 = readtable('2Hz.txt');
ans7 = ans7(37812:38094,:);
f = 2;
t = ans7.x__Time;
b = ans7.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans7.x__Time,ans7.velocity)
x = a\b;
x = x*2*pi/60/max(ans7.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans7.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 5hz
ans8 = readtable('5Hz.txt');
ans8 = ans8(34129:34254,:);
f = 5;
t = ans8.x__Time;
b = ans8.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans8.x__Time,ans8.velocity)
x = a\b;
x = x*2*pi/60/max(ans8.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans8.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11);

phasedif = phasew - phasev
%%
% 10hz
ans9 = readtable('10Hz.txt');
ans9 = ans9(9588:9637,:);
f = 10;
t = ans9.x__Time;
b = ans9.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans9.x__Time,ans9.velocity)
x = a\b;
x = x*2*pi/60/max(ans9.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans9.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11);

phasedif = phasew - phasev
%%
% 20hz
ans10 = readtable('20Hz.txt');
ans10 = ans10(2734:2756,:);
f = 20;
t = ans10.x__Time;
b = ans10.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans10.x__Time,ans10.velocity)
x = a\b;
x = x*2*pi/60/max(ans10.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1);

volt = ans10.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev
%%
% 50hz
ans12 = readtable('50.1Hz.txt');
ans12 = ans12(14660:18973,:);
f = 50;
t = ans12.x__Time;
b = ans12.velocity;
a = [sin(2*pi*f*t) cos(2*pi*f*t)];
plot(ans12.x__Time,ans12.velocity)
x = a\b;
x = x*2*pi/60/max(ans12.output)
c1 = x(1);
c2 = x(2);
k = sqrt(c1^2+c2^2)
phasew = atand(c2/c1)

volt = ans12.output;
x2 = a\volt;
x2 = x2/max(volt);
c11 = x2(1);
c21 = x2(2);
phasev = atand(c21/c11)

phasedif = phasew - phasev - 360