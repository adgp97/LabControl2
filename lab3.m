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

numc = 0.0375*[1 0.1625];
denc = [1 0.0078];
gc = tf(numc,denc)

numgt = conv(numc,nump);
dengt = conv(denc,denp);
gt = tf(numgt,dengt)

margin(gt);
grid minor;