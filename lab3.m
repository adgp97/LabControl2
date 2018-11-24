%Preliminares
clear; clc;
%%
%Bode de la función de transferencia de la planta original
nump = 41.4;
den1 = [1 0.8 2.07];
den2 = [0.28 1];
denp = conv(den1,den2);
gp = tf(nump,denp)
margin(gp);
grid minor;


%%
%Bode de G1 = K*Gp
K = 0.783;
gp = tf(K*nump,denp)
margin(gp);
grid minor;
%Bode de G1 aumentado para poder medir la Wc
W = 1.49:0.001:1.61;
bode(gp,W);
grid minor

%%
%Controlador
numc = 0.0375*[1 0.1625];
denc = [1 0.0078];
gc = tf(numc,denc)

%Sistema compensado
numgt = conv(numc,nump);
dengt = conv(denc,denp);
gt = tf(numgt,dengt)

margin(gt);
grid minor;

%%
%Determinación de los polos y ceros a lazo cerrado

gtf = feedback(gt,1)
pzmap(gtf)

%%
%Parámetros para simulink
fs = 100;

%Bloque del compensador
num_c = numc;
den_c = denc;
Gc = tf(num_c,den_c)

%Bloque del motor
num_motor = nump;
den_motor = den1;
Gp = tf(num_motor,den_motor)

%Bloque del filtro
num_filtro = [1];
den_filtro = den2;
Gf = tf(num_filtro,den_filtro)

sim('motor_modelo_prelab');
plot(tout,simout);

