Sx =1; 
Nx =512; 
dx = Sx/Nx; 
xa = [0:Nx-1]*dx; 
ya = xa; 
% p1 = [.2; .2]; 
% p2 = [.2; .8]; 
% p3 = [.5; .5]; 
% p4 = [.8; .8]; 
% p5 = [.8; .2]; 
% p1 = [ 0.3 ; 0.1 ];
% p2 = [ 0.8 ; 0.2 ]; 
% p3 = [ 0.7 ; 0.9 ];
% p4 = [ 0.6 ; 0.4 ];
% p5 = [ 0.1 ; 0.8 ];

p1=[.1;.1];
p2=[0.8;.1];
p3=[.8;.3];
p4= [.9;.3];
p5= [.9;.5];
p6= [.8;.5];
p7= [.8;.7];
p8= [.1;.7];
p9= [.5;.4];


P = [ p1 p2 p3 p4 p5, p6, p7, p8, p9 ];

A = polyfill(xa, ya, P); 

imagesc((A))