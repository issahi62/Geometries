%% INITIALIZE 
close all 
clear 
clc

%% DASHBOARD
Sx =1;
Sy = 1;

Nx = 512; %number of cells 
Ny = 512; % number of cells 

ShifterX = floor(Nx/10); 
ShifterY = floor(Ny/10); 

% width and height
w= .8*Sx; 
h= .9*Sy; 

dx = Sx/Nx; 
dy = Sy/Ny; 

ny = round(h/dy); %number of cells for the object

ny1 = ShifterY+ floor((Ny-ny)/2); % centering of object [index]
ny2 = ny1 + ny - ShifterY; % index2

ER = zeros(Nx, Ny); 

for ny= ny1:ny2
    ffactor = (ny-ny1+ShifterY)/(ny2-ny1+ShifterY); % function for different fractions 
    nx = round(ffactor*w/dx); 
    nx1 = ShifterX + floor((Nx-nx)/2); 
    nx2 = nx1 + nx -ShifterX; 
    ER(nx1:nx2, ny) = 1; 
end 

% Refractive index 
n1 =1; 
n2 = 1.5; 
ER = ER*n2 + (1-ER)*n1; 
imagesc(ER'); 
colormap(jet); 
    
    
    