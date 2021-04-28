clc;
clear;
global a;
global b;
a = importdata('opady.prn');
b = importdata('dunaj.prn');

vals = [60,1];
[x y] = fminunc(@lab08,vals);
tt = x(1)
Pe = x(2)