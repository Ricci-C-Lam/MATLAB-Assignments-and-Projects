% This script plots the Earth surface. Data file earth_topo.mat 
% has the earth topographical data. The axes are normalized by 10^6 m.
% References: www.mathworks.com/matlabcentral

Re = 6.37e6;
load earth_topo 
figure(1);
[x,y,z] = sphere(50);
s = surf(Re*x/1e6,Re*y/1e6,Re*z/1e6); % create a sphere
s.CData = topo;                % set color data to topographic data
s.FaceColor = 'texturemap';    % use texture mapping
s.EdgeColor = 'none';          % remove edges
s.FaceLighting = 'gouraud';    % preferred lighting for curved surfaces
s.SpecularStrength = 0.4;      % change the strength of the reflected light
grid on; box on; axis equal;
axis(8*[-1 1 -1 1 -1 1]);
xlabel('x (Mm)'); ylabel('y (Mm)'); zlabel('z (Mm)'); title('Earth');
set(gca,'LineWidth',1,'FontSize',14, ...
        'Xtick',[-8:2:8],'Ytick',[-8:2:8],'Ztick',[-8:2:8]);