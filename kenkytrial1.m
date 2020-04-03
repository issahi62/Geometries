%% Initialize 
clear all 
close all 
clc 

%% Constants 

Sx = 1; % physical size
Sy = 1; % physical size 

%% Grid points 

Nx = 100; 
Ny = 100; 

%% small change in x

dx = Sx/Nx; 
dy = Sy/Ny; 


%% shifter (1) 

ShifterX =Nx/10; 
ShifterY =Ny/10; 

%% Weight and height of the object 

w = .2; 
h = .8; 


nx = round(w/dx); % number of grid points for object
ny = round(h/dy); % number of grid points for object

nx1 = ShifterX+ floor((Nx-nx)/2); 
nx2 = nx1 +nx -ShifterX; 


ny1 = ShifterY+floor((Ny-ny)/2); 
ny2 = ny1 +ny -ShifterY; 

AA = zeros(Nx, Ny); 

AA(nx1:nx2, ny1:ny2) =1; 

n1 = 1; 
n2 = sqrt(12); 
A = n1+ (n2-n1)*AA;
imagesc(AA'); 

