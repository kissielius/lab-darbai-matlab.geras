%% Aukse Aleknaviciute EDIf-25/2 2026-09-14

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [=o=]   |   F_2 [=x=]')

%% linspace, size, max testavimas
x = linspace(1, 10, 5)
%%
A = [1 2 3; 4 5 6]
size(A)
%%
A = [4 8 2 9 5]
max(A)
%% Papildoma uzduotis
% 1
N = 9;

% 2 
v = N+1 : 0.5 : N+4;

% 3 
A = [N N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8]

% 4a
a = A(3, 2)

%4b
b = A(2:3,1:2)

%4c
c = A([1 3],[1 3])

% 5
v_mod = v(1:3)
B = [A; v_mod]