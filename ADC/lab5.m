clc;
close all;
clear all;
n = input('Enter n value for n-bit PCM system : ');
n1 = input('Enter number of samples in a period : ');
L = 2^n;
%Signal Generation and Sampling Operation
x = 0:2*pi/n1:4*pi; % n1 number of samples have to be selected
s = 8*sin(x);
subplot(3,1,1);
plot(s);
grid on;
title('Analog Signal');
xlabel('Time');
ylabel('Amplitude');
subplot(3,1,2);
stem(s);
grid on; 
title('Sampled Signal'); 
xlabel('Time');
ylabel('Amplitude');

% Quantization Process
vmax = 8;
vmin = -vmax;
del = (vmax-vmin)/L;
part = vmin:del:vmax; % level are between Vmin and Vmax with difference of del
code = vmin-(del/2):del:vmax+(del/2); % Contain Quantized values
[ind,q] = quantiz(s,part,code); % Quantization process
% ind contain index number and q contain quantized values
l1 = length(ind);
l2 = length(q);
for i = 1:l1
if(ind(i)~=0) % To make index as binary decimal so started from 0 to 
Nind(i)=ind(i)-1;
end
i = i+1;
end
for i = 1:l2
if(q(i)==vmin-(del/2)) % To make quantize value in between the levels
q(i)=vmin+(del/2);
end
end
subplot(3,1,3);
stem(q);grid on; % Display the Quantize values
grid on;
title('Quantized Signal');
ylabel('Amplitude');
xlabel('Time');


% Encoding Process
figure
code = de2bi(ind,'left-msb'); % Convert the decimal to binary
k = 1;
for i = 1:l1
for j = 1:n
coded(k) = code(i,j); % convert code matrix to a coded row vector
j = j+1;
k = k+1;
end
i = i+1;
end
subplot(2,1,1); 
stairs(coded); % Display the encoded signal
axis([0 100 -2 3]); 
grid on;
title('Encoded Signal');
xlabel('Time');
ylabel('Amplitude');

%Demodulated Signal
quant = reshape(coded,n,length(coded)/n);
index = bi2de(quant','left-msb');
q = del*index+vmin+(del/2);
subplot(2,1,2);
plot(q);
grid on;
title('Demodulated Signal');
xlabel('Time');
ylabel('Amplitude')