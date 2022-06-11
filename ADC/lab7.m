clc;
close all;
clear all;
% signal generation
x=0:.25:4*pi;              % signal taken upto 4pi
signal1 = 8*sin(x);        % generate 1st sinusoidal signal
l=length(signal1); 
signal2=8*triang(l);
% display of both signal 
subplot(2,2,1);
plot(signal1);
title('Sinosoidal signal');
ylabel("Amplitude");
xlabel("Time");
subplot(2,2,2);
plot(signal2);
title('Triangular Signal');
ylabel('Amplitude');
xlabel('Time');
% Display of both the signal
subplot(2,2,3);
stem(signal1);
title('sampled sinusoidal signal');
ylabel("Amplitude");
xlabel("Time");
subplot(2,2,4);
stem(signal2);
title('sampled Triangular signal');
ylabel("Amplitude");
xlabel("Time");
l1=length(signal1);         % making both row vector to a matrix
l2=length(signal2);
for i=1:l1
    sig(1,i)=signal1(i);
    sig(2,i)=signal2(i);
end
%TDM of both quantize signal
tdmsig=reshape(sig,1,2*l1);
% display of TDM Signal
figure
stem(tdmsig);
title('TDM signal');
ylabel("Amplitude");
xlabel("Time");
% Demodulation of TDM Signal
demux=reshape(tdmsig,2,l1);
for i=1:l1
    sig3(i)=demux(1,i);   % converting the matric into row vector
    sig4(i)=demux(2,i);
end

% display of demultiplexed signal
figure
subplot(2,1,1)
plot(sig3);
title('Recovered Sinosoidal signal');
ylabel("Amplitude");
xlabel("Time");
subplot(2,1,2)
plot(sig4);
title('Recovered Triangular signal');
ylabel("Amplitude");
xlabel("Time");
