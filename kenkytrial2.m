%% Initialize 
clc 
close all
% clear 
 
 %% physical dimension 
 Sx = 1; 
 Sy =1; 
 %% grid points 
 Nx = 100; 
 Ny = 100;
 
 %% ShifterX and ShifterY 
 ShifterX = round(Nx/10); 
 ShifterY = round(Ny/10); 
 
%% small change 
dx = Sx/ Nx; 
dy = Sy/ Ny; 

%% weight $ height 
w = .8; 
h = .9;

%% ny will not change 

ny = round(h/dy); 
ny1 = ShifterY+ floor((Ny-ny)/2);
ny2 = ny1+ny-ShifterY; 

A = zeros(Nx, Ny); 


for newny = ny1:ny2
    f = (newny-ny1 +ShifterY)/(ny2-ny1+ShifterY); 
    
    nx = round(f*w/dx); 
    
    nx1 = ShifterX+floor((Nx-nx)/2); 
    nx2 = nx1+nx-ShifterX; 
    A(nx1:nx2, newny) = 1;
end 
n1 = 1; 
n2 = sqrt(12); 
A = n1+ (n2-n1)*A; 
imagesc(A'); 
colormap('jet'); 
