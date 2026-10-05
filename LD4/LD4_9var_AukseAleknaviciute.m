%1a
x=(2*rand(1,200)-1).*sqrt(pi/2);
y=(2*rand(1,200)-1).*sqrt(pi/2);

x = sort(x);
y = sort(y);

[X, Y] = meshgrid(x,y);

Z=sin(X.^2 + Y.^2);

figure

h = surf(X,Y,Z);

shading interp
colormap parula
grid on

xlabel('x')
ylabel('y')
zlabel('f(x,y)')
title('f(x,y)=sin(x^2 + y^2)')

rotate(h, [1 0 0], 15)
rotate(h, [0 1 0], 15)

%1b
x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);

[X, Y] = meshgrid(x,y);

R = sqrt(X.^2 + Y.^2);
Z = exp(R.^2);

figure

h = surf(X,Y,Z)

shading interp
colormap parula
grid on

xlabel('x')
ylabel('y')
zlabel('z')
title('z(r) = e^{r^2}')

rotate(h, [1 0 0], 20)
rotate(h, [0 1 0], 20)

%%papildoma
x = linspace(-1, 1, 100);
y = linspace(-1, 1, 100);

[X,Y]=meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);

%1 grafikas
figure
surf(X,Y,Z)
shading interp
colormap nebula
grid on

xlabel('x')
ylabel('y')
zlabel('z')
title('z(x,y) = 1 - (x^2 + y^2), nebula spalvos')

%2 grafikas
figure
surf(X,Y,Z)
shading interp
colormap spring
grid on

xlabel('x')
ylabel('y')
zlabel('z')
title('z(x,y) = 1 - (x^2 + y^2), spring spalvos')

%3 grafikas
figure
surf(X,Y,Z)
shading interp
colormap abyss
grid on

xlabel('x')
ylabel('y')
zlabel('z')
title('z(x,y) = 1 - (x^2 + y^2), abyss spalvos')