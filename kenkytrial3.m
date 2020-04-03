%% Initialize 

clc 
close all 
clear 


%% constants 
Sx =1; 
Sy = 1; 

Nx = 300; 
Ny = 300; 

dx = Sx/Nx; 
dy = Sy/Ny;

xa = [0:Nx-1]*dx; xa = xa-mean(xa);  
ya = [0:Ny-1]*dy; ya = ya-mean(ya); 

[Y, X] = meshgrid(ya,xa); 

rx = .2;
ry = .4; 
xc = -.1; 
yc = -.1; 


R = ((X-xc)./rx).^2+((Y-yc)./ry).^2<1;

BB = atan(Y./X); 
imagesc(BB'); 