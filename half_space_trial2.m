%% Initialize 
close all 
clear  
clc

%% Dashboard
Sx = 1; %physical size 
Sy = 1; % physical size

Nx = 100; % grid size x-axis
Ny = 100; % grid size y-axis

dx = Sx/Nx; 
dy = Sy/Ny;

xa = [0:Nx-1]*dx; xa = xa-mean(xa); 
ya = [0:Ny-1]*dy; ya = ya-mean(ya); 

[Y, X] = meshgrid(ya, xa); 

x1 = xa(1);   x2 = xa(end); 
y1 =  ya(round(Ny/4))+.5; y2 = ya(1); 

m = (y2-y1)/(x2-x1); 

A =(Y - y1) - m*(X - x1) > 0;

%% Two dimensional line

x1 = 0; y1 = 1;
x2 = 2; y2 = 0;
D = (y2 - y1)*X - (x2 - x1)*Y + x2*y1 - x1*y2;
D = abs(D)./sqrt((y2 - y1)^2 + (x2 - x1)^2);

B = D < 0.7;

%% refractive index section
n1 =1; 
n2 =1.5;

%A = n2*A + (1-A)*n1; 
D = n2*D + (1-A)*n1; 

pcolor(D); 
shading interp;
colormap(jet); 

