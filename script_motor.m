%El script se debe ejecutar por partes

%Preliminares
clear;clc;
fs = 10000;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                      SIMULACION ARCHIVO motor.mdl                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sim('motor');
figure(1)
plot(t,wla)
title('Respuesta del sistema a lazo abierto a una entrada escal�n')
xlabel('Tiempo (s)');
ylabel('Velocidad del motor (rpm)');
ylim([0 130]);
grid on


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                    SIMULACION ARCHIVO motorPID.mdl                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Ganacia cr�tica. Sistema cr�ticamente estable
Kp = 0.7161;
Ti = inf;
Td = 0;
I = Kp/Ti;
D = Kp*Td;

sim('motorPID');
figure(2)
plot(t,wla)
title('Respuesta del sistema para la ganancia cr�tica')
xlabel('Tiempo (s)');
ylabel('Velocidad del motor (rpm)');
grid on

%Controlador P
Kp = 0.3581;
Ti = inf;
Td = 0;
I = Kp/Ti;
D = Kp*Td;

sim('motorPID');
figure(3)
plot(t,wla)
title('Respuesta del sistema a una entrada escal�n. Controlador P.')
xlabel('Tiempo (s)');
ylabel('Velocidad del motor (rpm)');
grid on

%Controlador PI
Kp = 0.3222;
Ti = 1;
Td = 0;
I = Kp/Ti;
D = Kp*Td;

sim('motorPID');
figure(4)
plot(t,wla)
title('Respuesta del sistema a una entrada escal�n. Controlador PI.')
xlabel('Tiempo (s)');
ylabel('Velocidad del motor (rpm)');
grid on

%Controlador PID
Kp = 0.4297;
Ti = 0.6;
Td = 0.15;
I = Kp/Ti;
D = Kp*Td;

sim('motorPID');
figure(5)
plot(t,wla)
title('Respuesta del sistema a una entrada escal�n. Controlador PID.')
xlabel('Tiempo (s)');
ylabel('Velocidad del motor (rpm)');
grid on



