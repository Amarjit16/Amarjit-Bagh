clc;
clear;
clear all;
%%start by generating an eeg signal (EEG 2D data)
fs = 512;
T = 1/fs;
EEGsig= load ('eeg.txt');
ls = size(EEGsig); N = length(EEGsig);
t = [0:N-1]/fs;
fx = fs*(0:N-2)/N;
x=EEGsig;
figure();
grid on;
hold on;
plot(EEGsig);
ylabel('Amplitude (microvolt)');
xlabel('Time (s)');
title('ECG Signal');

s=EEGsig;

fs = 500;
% Sampling frequency
N=length(s);
 
D5=s
D6=s
D7=s
D8=s
A8=s
xdft = fft(s);
freq = 0:N/length(D5):N/2;
xdft = xdft(1:length(D5)/2+1);
figure;subplot(511);plot(freq,abs(xdft));title('GAMMA-FREQUENCY');
[~,I] = max(abs(xdft));
fprintf('Gamma:Maximum occurs at %3.2f Hz.\n',freq(I));
D6 = detrend(D6,0);
xdft2 = fft(D6);
freq2 = 0:N/length(D6):N/2;
xdft2 = xdft2(1:length(D6)/2+1);
% figure;
subplot(512);plot(freq2,abs(xdft2));title('BETA');
[~,I] = max(abs(xdft2));
fprintf('Beta:Maximum occurs at %3.2f Hz.\n',freq2(I));
D7 = detrend(D7,0);
xdft3 = fft(D7);
freq3 = 0:N/length(D7):N/2;
xdft3 = xdft3(1:length(D7)/2+1);
% figure;
subplot(513);plot(freq3,abs(xdft3));title('ALPHA');
[~,I] = max(abs(xdft3));
fprintf('Alpha:Maximum occurs at %f Hz.\n',freq3(I));
         
                
 
xdft4 = fft(D8);
freq4 = 0:N/length(D8):N/2;
xdft4 = xdft4(1:length(D8)/2+1);
% figure;
subplot(514);plot(freq4,abs(xdft4));title('THETA');
[~,I] = max(abs(xdft4));
fprintf('Theta:Maximum occurs at %f Hz.\n',freq4(I));
A8 = detrend(A8,0);
xdft5 = fft(A8);
freq5 = 0:N/length(A8):N/2;
xdft5 = xdft5(1:length(A8)/2+1);
% figure;
subplot(515);plot(freq3,abs(xdft5));title('DELTA');
[~,I] = max(abs(xdft5));
fprintf('Delta:Maximum occurs at %f Hz.\n',freq5(I));