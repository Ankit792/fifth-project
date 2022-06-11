clc;
close all; 
clear all;
% continuous signal
L=1000;
fsim=22000; %sampling frequency of the continuous signal
fc=fsim/L; %fc allows to get 1 cycle of L samples
Tcycle=1/fc; % 1 period
Tcont=1/fsim; %sampling period
continuous_time_axis=[0:Tcont:Tcycle]; %a period of the signal
ycont=sin(2*pi*fc*continuous_time_axis); % a cycle of a continuos sinusoid

%ideal sampled signal
num_samples_cycle=8;
Tm=Tcont*L/num_samples_cycle; %sampling period of the sampled signal
discrete_time_axis=[0:Tm:Tcycle];
ysampled=sin(2*pi*fc*discrete_time_axis);
figure();
h1=plot(continuous_time_axis,ycont); title('Cycle of the continuous signal with 8 samples');
xlabel('n'); ylabel('amplitude'); 
hold on;
h2=stem(discrete_time_axis,ysampled);
legend([h1, h2], 'Information signal' , 'sampled signal'); % adding legend
hold off;

%PAM Signal
N=length(ycont); % take the length of the continuous signal
z=zeros(1,N); % create an N-length vector of zeros
n=floor(Tm/Tcont); % divide the period of the discrete signal between the
% period of the continuous signal (we round it). This
% will be the increment between the samples of the
% sampled signal
z(1:n:N)=ysampled; %we put the values of ysampled in the vector of zeros every n samples;
% so we are adding zeros between the samples of the
% signal
h=zeros(1,100);
h(1:10)=1; %we create a pulse with a duration of 10 samples
pamreal=conv(h,z); % we convolve the pulse with the sampled signal which contains

% the zeros between each sample
figure()
plot(pamreal(1:L));title('PAM Signal'); xlabel('n'); ylabel('amplitude');
legend('PAM Signal');

figure(); %we are going to plot the continuous signal and the PAM signal overlapped
h3=plot(continuous_time_axis, pamreal(1:N));title('PAM signal and continuous signal overlapped'); 
xlabel('n'); ylabel('amplitude'); 
hold on;
h4=plot(continuous_time_axis, ycont);
legend([h3, h4], 'PAM signal' , 'Information signal'); % adding legend
hold off;

% sample and hold
figure();
h5=plot(continuous_time_axis,ycont); title('Sample and Hold');
xlabel('n'); ylabel('amplitude'); grid on; axis([0 0.05 -1.5 1.5]); 
hold on;
line(xlim, [0,0]);        % making x-axis 
h6=stairs(discrete_time_axis,ysampled);  % we plot hold and sample with discrete_time_axis and yampled
legend([h5, h6], 'Information signal' , 'Sample and hold output'); 
hold off;


