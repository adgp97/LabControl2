%Preliminares
clear;clc
fs = 1000;

sim('tanksSIMa');

figure(1)
plot(t,h1);
title('Altura del tanque 1');
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
grid on

figure(2)
plot(t,h2);
title('Altura del tanque 2');
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
grid on