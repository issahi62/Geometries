% DEFINE GRID
Sx = 1; %physical size along x
Sy = 1; %physical size along y
Nx = 200; %number of cells along x
Ny = 200; %number of cells along y
% GRID ARRAYS
dx = Sx/Nx;
xa = [0:Nx-1]*dx;
xa = xa - mean(xa);
dy = Sy/Ny;
ya = [0:Ny-1]*dy;
ya = ya - mean(ya);
[Y,X] = meshgrid(ya,xa);
% CREATE ELLIPSE
% xc = -0.15;
% yc = +0.25;

xc=0; yc=0; 
% rx = 0.4;
% ry = 0.2;

rx = 1; 
ry =1; 

r = .3^2;
A = ( ((X - xc)/rx).^2 +...
((Y - yc)/ry).^2 ); %<= r;

imagesc(round(20.*A)); 
colormap(jet); 