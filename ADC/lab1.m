clc
clear all
close all             
% A = input('Amplitude value = ')
% t=-20:0.1:20;
% f=0.1;
% 
% % Sine Wave 
% x = A*sin(2*pi*f*t);
% subplot(2,2,1); plot(t,x); axis([-20 20 -A A]); grid on                        
% title('Sine'); xlabel('Time');
% ylabel('Amplitude'); legend('Sine wave'); 
%  
% % Cosine Wave
% y = A*cos(2*pi*f*t); 
% subplot(2,2,2); plot(t,y); axis([-20 20 -A A]); grid on; 
% title('cos'); xlabel('Time'); 
% ylabel('Amplitude'); legend('cos wave')
% 
% % Ramp
% ramp = (t>=0).*t; 
% % y=zeros(1,20);
% subplot(2,2,3); plot(t,ramp); axis([-20 20 -10 20]); grid on;
% xlabel('Time'); ylabel('Amplitude'); title('ramp');
% legend('Ramp wave');  



 
% f=4000;
% t=0:1/f:16*(1/f);
% y=zeros(size(t));
% y(1:1/f:end)=1;
% stem(t,y);
% 
T = 0.00025;
Len = 16;
impulse = ones(1, Len);
t = 0:T:T*(Len-1);
stem(t, impulse);
title('Impulse Train'); legend('Impulse Train'); 
grid on; title('Impulse Train');


