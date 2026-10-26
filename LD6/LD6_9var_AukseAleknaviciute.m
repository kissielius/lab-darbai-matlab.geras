clc;
clear;
close all;

%1 
A = [1 2; 3 4];
B = pakartojimai(A, 2, 3)
help pakartojimai

%2
global x y

x = 0:0.1:2*pi;

skaiciuoti

figure
plot(x, y, 'g:s')
grid on
title('sin(x) + cos(x)')
xlabel('x')
ylabel('y')

whos

%papildoma
x1 = pi/2;

a = vienasdu(x1)

[a, b] = vienasdu(x1)