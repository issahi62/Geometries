Sx =1; 
Sy =1; 

Nx = 200; 
Ny = 200; 

dx = Sx/Nx; 
dy = Sy/Ny; 

xa = [0:Nx-1]*dx; xa = xa-mean(xa); 
ya = [0:Ny-1]*dy; ya = ya-mean(ya); 

%% Surfaces to show 
%y = 1/2.*xa*1;
y = 0.01/2 + 0.1*sin(4*pi*xa./Sx);
plot(y, 'linewidth', 2.5); 
% FILL HALF SPACE
A = zeros(Nx,Ny); % matrix 

for nx = 1 : Nx
ny = round((y(nx) + Sy/2)/dy);
A(nx,1:ny) = 1;
end

imagesc(A.')
%colormap(jet); 