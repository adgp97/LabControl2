%Preliminares
clear;clc
fs = 1000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                    SIMULACION ARCHIVO tanksSIMa.mdl                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                    SIMULACION ARCHIVO tanksPIDa.mdl                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Controlador P
Kp = 1.767;
Ti = inf;
Td = 0;
Ki = Kp/Ti;
Kd = Kp*Td;


sim('tanksPIDa');

figure(1)
plot(t,Href,t,h1);
title('Altura del tanque 1. Controlador P.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h1');
grid on

figure(2)
plot(t,Href,t,h2);
title('Altura del tanque 2. Controlador P.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h2');
grid on

%Controlador PI
Kp = 1,497;
Ti = 10,014;
Td = 0;
Ki = Kp/Ti;
Kd = Kp*Td;


sim('tanksPIDa');

figure(1)
plot(t,Href,t,h1);
title('Altura del tanque 1. Controlador PI.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h1');
grid on

figure(2)
plot(t,Href,t,h2);
title('Altura del tanque 2. Controlador PI.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h2');
grid on

%Controlador PID
Kp = 2,273;
Ti = 10,331;
Td = 1,613;
Ki = Kp/Ti;
Kd = Kp*Td;


sim('tanksPIDa');

figure(1)
plot(t,Href,t,h1);
title('Altura del tanque 1. Controlador PID.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h1');
grid on

figure(2)
plot(t,Href,t,h2);
title('Altura del tanque 2. Controlador PID.')
xlabel('Tiempo (s)');
ylabel('Altura (cm)');
legend('Href','h2');
grid on

