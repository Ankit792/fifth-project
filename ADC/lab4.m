clc;
close all;
clear all;
Ac=input('Enter carrier signal amplitude ');
Am=input('Enter Message signal amplitude ');
fc=input('Enter carrier frequency ');
fm=input('Enter message frequency ');  %fm<fc
m=input('Enter modulation Index ');
t=input('Enter timen Period ');
t1=linspace(0,t,1000);            
y1=sin(2*pi*fm*t1);       % message signal
y2=sin(2*pi*fc*t1);       % carrier signal
eq=(1+m.*y1).*(Ac.*y2);   % AM equation
subplot(3,1,1);plot(t1,y1);
xlabel('Time');
ylabel('Amplitude');
title('Message signal');
subplot(3,1,2);plot(t1,y2);
xlabel('Time');
ylabel('Amplitude');
title('carrier signal');
% subplot(3,1,3);plot(t1,eq);
% xlabel('Time');
% ylabel('Amplitude');
% title('modulated signal');
 
% % noise
% z=awgn(eq,0.7);
% subplot(3,1,3);plot(t1,z);
% title('Noise signal ');
% xlabel('Frequency axis');
% ylabel('Amplitude');

% % spectrum of Am for m=0.7
fs=fc*2;
Ts=1/fs;
n=floor(log(length(eq))/log(2));
N=2^n;
fw=abs(fft(eq(1:N)));
z=(-N/2:N/2-1)/(Ts*N);
fws=fftshift(fw);
subplot(3,1,3);stem(z,fws);
title('AM signal spectrum');
xlabel('Frequency axis');
ylabel('Amplitude');
 