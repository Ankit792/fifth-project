% % PWM Signal Generation using MATLAB
% clc;
% close all;
% clear all;
% t=0:0.001:1;                % sampling rate
% s=sawtooth(2*pi*10*t+pi);     %Carrier signal
% m=sin(2*pi*1*t);              %Message signal
% n=length(s);
% 
% for i=1:n
% if (m(i)>=s(i)) %Comparison to obtain pulse width
%     pwm(i)=1;           % sawtooth wave amplitude at ith sample
% elseif (m(i)<=s(i))
%     pwm(i)=0;
% end
% end
% plot(t,pwm,'-k',t,m,'--r',t,s,'--b');
% grid on;
% ylabel('Amplitude');
% xlabel('Time index');
% title('PWM Wave');
% axis([0 1 -1.5 1.5]);


% 
% % % PPM Signal
% fc=50;
% fs=1000;
% f1=200;f2=300;
% t=0:1/fs:((2/f1)-(1/fs));
% x1=0.4*sin(2*pi*f1*t)+0.5;
% subplot(2,1,1); plot(x1); title('message signal');grid on;
% subplot(2,1,2),
% y=modulate(x1,fc,fs,'PPM'); plot(y);
% title('PPM MODULATION'); grid on;

% PPM Signal
clc;
clear all;
close all;
fc=100;
fs=10000;
fm=200;
t=0:0.1/fs:((2/fm)-(1/fs));
X=0.4*sin(2*pi*fm*t)+0.5;
Y=modulate(X,fc,fs,'PPM');
plot(X);
hold on;
plot(Y); axis([0 500 -0.2 1.2]);
hold off; title('PPM');ylabel('Amplitude');xlabel('Time index');
