%Preliminares

clear;clc
fs = 100;

num = 180;
den = [1 5.1478 5.5483 9];


%Respuesta a lazo abierto
sim('motor');

figure(1)
plot(tout,y_open_loop);
grid on
xlabel('Tiempo (s)');
ylabel('Velocidad angular (rpm)');
title('Respuesta a lazo abierto');

%Respuesta a lazo cerrado sin controlador

numc = 2.31*conv([1 2.73],[1 2.73]);
denc = conv([1 9.16],[1 9.16]);

sim('motorC');

figure(2)
plot(tout,y_closed_loop);
grid on
xlabel('Tiempo (s)');
ylabel('Velocidad angular (rpm)');
title('Respuesta a lazo abierto');