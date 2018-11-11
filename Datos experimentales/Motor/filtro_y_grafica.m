%%Filtrado de la respuesta del sistema a lazo abierto
clear
load ('WfiltradaSinC');
figure(1)
plot(plot_time, Identificacion_WFiltrada)
grid on
title('Respuesta del sistema a lazo abierto');
ylabel('Velocidad del motor (rpm)')
xlabel('Tiempo (s)')
pause

clear
load ('WfiltradaConP');
figure(2)
plot(plot_time, ctrl_PID_WFiltrada)
grid on
title('Respuesta del sistema. Controlador P');
ylabel('Velocidad del motor (rpm)')
xlabel('Tiempo (s)')
pause

clear
load ('WfiltradaConPI');
figure(3)
plot(plot_time, ctrl_PID_WFiltrada)
grid on
title('Respuesta del sistema. Controlador PI');
ylabel('Velocidad del motor (rpm)')
xlabel('Tiempo (s)')
pause

clear
load ('WfiltradaConPID');
figure(2)
plot(plot_time, ctrl_PID_WFiltrada)
grid on
title('Respuesta del sistema. Controlador PID');
ylabel('Velocidad del motor (rpm)')
xlabel('Tiempo (s)')