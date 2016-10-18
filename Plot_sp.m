%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Soheil Fatehiboroujeni
%  University of California, Merced
%
%  The script generates a helix and uses 3d spheres 
%  instead of 2d Matlab markers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc
clear

[x,y,z] = sphere(30);
x=0.06*x;
y=0.06*y;
z=0.06*z;

t=0:0.1:5*pi;
x1=cos(t);
y1=sin(t);
z1=0.5*t;
[n1 n2]=size(t);

for i=1:n2
    s2=surf(x+x1(i),y+y1(i),z+z1(i));   
    shading interp
    hold on
    camlight
    lighting phong
    set(s2); %,'facecolor',[.98 .00 .02]
end

axis equal
set(0,'defaultTextInterpreter','latex')
set(gcf,'color','w')
set(gca,'FontSize',18)
hFig = figure(1);
set(hFig, 'Position', [20 20 400 700])
map = [.98 .00 .02];
colormap(map)

xlabel('$x$ (m)','FontSize',24)
ylabel('$y$ (m)','FontSize',24)
zlabel('$z$ (m)','FontSize',24)