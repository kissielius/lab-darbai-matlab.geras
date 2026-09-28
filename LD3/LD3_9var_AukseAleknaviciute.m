%1a
x = linspace(0, 200, 300);
fx = 2.*exp(-0.02.*x).*cos(0.2.*x);

figure
plot(x, fx, 'g', 'LineWidth',10);

title('f(x) = 2e(-0.02x)*cos(0.2x)');
xlabel('x');
ylabel('f(x)');
legend('Kosinuso funkcija')
grid on;

%1b
z1 = linspace(-pi+0.01, -0.01, 300);
z2 = linspace(0.01, pi-0.01, 300);

fz1 = cot(z1);
fz2 = cot(z2);

figure
plot(z1, fz1, 'b', 'LineWidth', 2);
hold on
plot(z2, fz2, 'b', 'LineWidth', 2);
hold off

title('f(z)=cot(z)');
xlabel('z');
ylabel('f(z)');
legend('Kotangento funkcija')

grid on

axis([-pi pi -10 10])

%2a
x = 0 : 0.1 : 10*pi;
y = sin(x).*cos(x);
z = cos(x);

plot3(x, y, z, 'LineWidth',2);

title('Erdvinis grafikas');
xlabel('x');
ylabel('y(x)');
zlabel('z(x)');

grid on;

%b
polarplot(x, y, 'LineWidth',2);
title('y(x) funkcija kampinėje ašyje');

%%papildoma
A = 5;
f = 4;
sigma = 2;
U1 = 3;
U2 = 1.5;
t = 0 : 0.001 : 1.2;
st = A*cos(2*pi*f*t);
n = sigma*randn(size(t));

s = st + n;

s_filtr = s;
s_filtr(abs(s_filtr) < U2) = 0;

%a
figure

plot(t, s, '--', 'LineWidth', 1.5);
hold on
plot(t, s_filtr, ':', 'LineWidth',1.5);

yline(U1, '--', 'U1')
yline(U2, '-', 'Color', 'm', 'LineWidth',1.5)

title('Pradinis ir filtruotas signalai', 'Color', 'm', 'FontSize', 16);
xlabel('Laikas, s');
ylabel('Įtampa');

legend('Pradinis signalas', 'Filtruotas signalas', 'U1 riba', 'U2 riba');

grid on
hold off

%%b
ind = s > U1;

figure 

stem(t(ind), s(ind), 'LineWidth',1.5);
hold on

[max_s, max_ind] = max(s(ind));
[min_s, min_ind] = min(s(ind));

t_ind = t(ind);

plot(t_ind(max_ind), max_s, 'c*', 'MarkerSize', 12, 'LineWidth', 1.5);
plot(t_ind(min_ind), min_s, 'mo', 'MarkerSize', 8, 'LineWidth', 1.5);

title('Reikšmės viršijančios U1', 'Color','m', 'FontSize',16)
xlabel('Laikas, s');
ylabel('Įtampa');

legend('s>U1', 'Maksimali reikšme', 'Minimali reikšmė')

grid on
hold off

