clear all;
close all;
clc;
format long;
name  = 'Ricci Lam';
id = 'A12992490';
hw_num = 'project';

Xo = zeros(1,7);
Yo = zeros(1,7);
Zo = zeros(1,7);
Uo = zeros(1,7);
Vo = zeros(1,7);
Wo = zeros(1,7);

 for n = 1:7 
     [Xo(n), Yo(n), Zo(n), Uo(n), Vo(n), Wo(n)] = read_input('simulation_data.txt', n);
 end
 
 %T, X, Y, Z, U, V, W, h
 %Xo, Yo, Zo, Uo, Vo, Wo
 
 [t1, x1, y1, z1, u1, v1, w1, h1] = shuttle(Xo(1), Yo(1), Zo(1), Uo(1), Vo(1), Wo(1));
 [t2, x2, y2, z2, u2, v2, w2, h2] = shuttle(Xo(2), Yo(2), Zo(2), Uo(2), Vo(2), Wo(2));
 [t3, x3, y3, z3, u3, v3, w3, h3] = shuttle(Xo(3), Yo(3), Zo(3), Uo(3), Vo(3), Wo(3));
 [t4, x4, y4, z4, u4, v4, w4, h4] = shuttle(Xo(4), Yo(4), Zo(4), Uo(4), Vo(4), Wo(4));
 [t5, x5, y5, z5, u5, v5, w5, h5] = shuttle(Xo(5), Yo(5), Zo(5), Uo(5), Vo(5), Wo(5));
 [t6, x6, y6, z6, u6, v6, w6, h6] = shuttle(Xo(6), Yo(6), Zo(6), Uo(6), Vo(6), Wo(6));
 [t7, x7, y7, z7, u7, v7, w7, h7] = shuttle(Xo(7), Yo(7), Zo(7), Uo(7), Vo(7), Wo(7));
 
 
 figure(1);
 plot3(x1, y1, z1,'-r');hold on;
 plot3(x2, y2, z2,'-g');hold on;
 plot3(x3, y3, z3,'-b');hold on;
 plot3(x4, y4, z4,'-c');hold on;
 plot3(x5, y5, z5,'-k');hold on;
 plot3(x6, y6, z6,'-y');hold on;
 plot3(x7, y7, z7,'-m');hold on;
 plot3(x1(end), y1(end), z1(end),'dr');hold on;
 plot3(x2(end), y2(end), z2(end),'dg');hold on;
 plot3(x3(end), y3(end), z3(end),'db');hold on;
 plot3(x4(end), y4(end), z4(end),'dc');hold on;
 plot3(x5(end), y5(end), z5(end),'dk');hold on;
 plot3(x6(end), y6(end), z6(end),'dy');hold on;
 plot3(x7(end), y7(end), z7(end),'dm');hold on;
 
 Re = 6.37e6;
load earth_topo 
[x,y,z] = sphere(50);
s = surf(Re*x,Re*y,Re*z); % create a sphere
s.CData = topo;                % set color data to topographic data
s.FaceColor = 'texturemap';    % use texture mapping
s.EdgeColor = 'none';          % remove edges
s.FaceLighting = 'gouraud';    % preferred lighting for curved surfaces
s.SpecularStrength = 0.4;      % change the strength of the reflected light
grid on; box on; axis equal;
%axis(8*[-1 1 -1 1 -1 1]);
xlabel('x (m)'); ylabel('y (m)'); zlabel('z (m)'); title('Reentry Trajectories');
%set(gca,'LineWidth',1,'FontSize',14, ...
 %       'Xtick',[-8:2:8],'Ytick',[-8:2:8],'Ztick',[-8:2:8]);
 legend('sim1','sim2','sim3','sim4','sim5','sim6','sim7','sim1end','sim2end','sim3end','sim4end','sim5end','sim6end','sim7end');
 
 Vmag1 = zeros(1,length(u1));
 for n = 1:length(u1)
     Vmag1(n) = sqrt((u1(n)^2)+(v1(n)^2)+(w1(n)^2));
 end
 
  Vmag2 = zeros(1,length(u2));
 for n = 1:length(u2)
     Vmag2(n) = sqrt((u2(n)^2)+(v2(n)^2)+(w2(n)^2));
 end
 
  Vmag3 = zeros(1,length(u3));
 for n = 1:length(u3)
     Vmag3(n) = sqrt((u3(n)^2)+(v3(n)^2)+(w3(n)^2));
 end
 
  Vmag4 = zeros(1,length(u4));
 for n = 1:length(u4)
     Vmag4(n) = sqrt((u4(n)^2)+(v4(n)^2)+(w4(n)^2));
 end
 
  Vmag5 = zeros(1,length(u5));
 for n = 1:length(u5)
     Vmag5(n) = sqrt((u5(n)^2)+(v5(n)^2)+(w5(n)^2));
 end
 
  Vmag6 = zeros(1,length(u6));
 for n = 1:length(u6)
     Vmag6(n) = sqrt((u6(n)^2)+(v6(n)^2)+(w6(n)^2));
 end
 
  Vmag7 = zeros(1,length(u7));
 for n = 1:length(u7)
     Vmag7(n) = sqrt((u7(n)^2)+(v7(n)^2)+(w7(n)^2));
 end
 
 dVmag1 = (diff(Vmag1))./(diff(t1));
 dVmag2 = (diff(Vmag2))./(diff(t2));
 dVmag3 = (diff(Vmag3))./(diff(t3));
 dVmag4 = (diff(Vmag4))./(diff(t4));
 dVmag5 = (diff(Vmag5))./(diff(t5));
 dVmag6 = (diff(Vmag6))./(diff(t6));
 dVmag7 = (diff(Vmag7))./(diff(t7));
 
figure(2);
subplot(2,1,1); 
    plot(t1, h1,'-r'); hold on;
    plot(t2, h2,'-g'); hold on;
    plot(t3, h3,'-b'); hold on;
    plot(t4, h4,'-c'); hold on;
    plot(t5, h5,'-k'); hold on;
    plot(t6, h6,'-y'); hold on;
    plot(t7, h7,'-m'); hold on;
    
    xlabel('Time (s)'); ylabel('Altitude (m)'); title('Altitude Compared to Time');
    legend('sim1','sim2','sim3','sim4','sim5','sim6','sim7');
subplot(2,1,2);
    plot(h1(1:end-1), dVmag1, '-r'); hold on;
    plot(h2(1:end-1), dVmag2, '-g'); hold on;
    plot(h3(1:end-1), dVmag3, '-b'); hold on;
    plot(h4(1:end-1), dVmag4, '-c'); hold on;
    plot(h5(1:end-1), dVmag5, '-k'); hold on;
    plot(h6(1:end-1), dVmag6, '-y'); hold on;
    plot(h7(1:end-1), dVmag7, '-m'); hold on;
    
    xlabel('Altitude (m)'); ylabel('Acceleration of Rocket over time(m/s^2'); title('Change in Acceleration Over Altitude');
    legend('sim1','sim2','sim3','sim4','sim5','sim6','sim7');
%task 3

dx1 = diff(x1);
dx2 = diff(x2);
dx3 = diff(x3);
dx4 = diff(x4);
dx5 = diff(x5);
dx6 = diff(x6);
dx7 = diff(x7);

dy1 = diff(y1);
dy2 = diff(y2);
dy3 = diff(y3);
dy4 = diff(y4);
dy5 = diff(y5);
dy6 = diff(y6);
dy7 = diff(y7);

dz1 = diff(z1);
dz2 = diff(z2);
dz3 = diff(z3);
dz4 = diff(z4);
dz5 = diff(z5);
dz6 = diff(z6);
dz7 = diff(z7);

disttot1 = 0;
for n = 1:length(dx1)
   distpoint1 = sqrt((dx1(n)^2) + (dy1(n)^2) + (dz1(n)^2));
   disttot1 = disttot1 + distpoint1;
end

disttot2 = 0;
for n = 1:length(dx2)
   distpoint2 = sqrt((dx2(n)^2) + (dy2(n)^2) + (dz2(n)^2));
   disttot2 = disttot2 + distpoint2;
end

disttot3 = 0;
for n = 1:length(dx3)
   distpoint3 = sqrt((dx3(n)^2) + (dy3(n)^2) + (dz3(n)^2));
   disttot3 = disttot3 + distpoint3;
end

disttot4 = 0;
for n = 1:length(dx4)
   distpoint4 = sqrt((dx4(n)^2) + (dy4(n)^2) + (dz4(n)^2));
   disttot4 = disttot4 + distpoint4;
end

disttot5 = 0;
for n = 1:length(dx5)
   distpoint5 = sqrt((dx5(n)^2) + (dy5(n)^2) + (dz5(n)^2));
   disttot5 = disttot5 + distpoint5;
end

disttot6 = 0;
for n = 1:length(dx6)
   distpoint6 = sqrt((dx6(n)^2) + (dy6(n)^2) + (dz6(n)^2));
   disttot6 = disttot6 + distpoint6;
end

disttot7 = 0;
for n = 1:length(dx7)
   distpoint7 = sqrt((dx7(n)^2) + (dy7(n)^2) + (dz7(n)^2));
   disttot7 = disttot7 + distpoint7;
end

sim_id = [1:7];
final_time = [t1(length(t1)), t2(length(t2)), t3(length(t3)), t4(length(t4)), t5(length(t5)), t6(length(t6)), t7(length(t7))];
final_position = {[x1(length(x1)) y1(length(y1)) z1(length(z1))] [x2(length(x2)) y2(length(y2)) z2(length(z2))] [x3(length(x3)) y3(length(y3)) z3(length(z3))] [x4(length(x4)) y4(length(y4)) z4(length(z4))] [x5(length(x5)) y5(length(y5)) z5(length(z5))] [x6(length(x6)) y6(length(y6)) z6(length(z6))] [x7(length(x7)) y7(length(y7)) z7(length(z7))]};
final_velocity = {[u1(length(u1)) v1(length(v1)) w1(length(w1))] [u2(length(u2)) v2(length(v2)) w2(length(w2))] [u1(length(u3)) v3(length(v3)) w3(length(w3))] [u4(length(u4)) v4(length(v4)) w4(length(w4))] [u5(length(u5)) v5(length(v5)) w5(length(w5))] [u6(length(u6)) v6(length(v6)) w6(length(w6))] [u7(length(u7)) v7(length(v7)) w7(length(w7))]};   
max_speed = [max(Vmag1) max(Vmag2) max(Vmag3) max(Vmag4) max(Vmag5) max(Vmag6) max(Vmag7)];
min_speed = [min(Vmag1) min(Vmag2) min(Vmag3) min(Vmag4) min(Vmag5) min(Vmag6) min(Vmag6)];
max_acceleration = [max(dVmag1) max(dVmag2) max(dVmag3) max(dVmag4) max(dVmag5) max(dVmag6) max(dVmag7)];
min_acceleration = [min(dVmag1) min(dVmag2) min(dVmag3) min(dVmag4) min(dVmag5) min(dVmag6) min(dVmag7)]; 
traveling_distance = [disttot1 disttot2 disttot3 disttot4 disttot5 disttot6 disttot7];
final_acceleration = [dVmag1(length(dVmag1)) dVmag2(length(dVmag2)) dVmag3(length(dVmag3)) dVmag4(length(dVmag4)) dVmag5(length(dVmag5)) dVmag6(length(dVmag6)) dVmag7(length(dVmag7))];


for n = 1:7
stat(n).sim_id = sim_id(n);
stat(n).final_time = final_time(n);
stat(n).final_position = final_position{n};
stat(n).final_velocity = final_velocity{n};
stat(n).max_speed = max_speed(n);
stat(n).min_speed = min_speed(n);
stat(n).max_acceleration = max_acceleration(n);
stat(n).min_acceleration = min_acceleration(n);
stat(n).traveling_distance = traveling_distance(n);
end

%task4

fid = fopen('report.txt', 'w+');
fprintf(fid,'%s \n', name);
fprintf(fid,'%s \n', id);
fprintf(fid, 'Sim ID, landing time (s), traveling distance (m), landing velocity (m/s), landing acceleration (m/(s^2)) \n');
for n = 4:10
        fprintf( fid, '%i, %15.9e, %15.9e, [%15.9e %15.9e %15.9e], %15.9e \n', sim_id(n-3), final_time(n-3), traveling_distance(n-3), stat(n-3).final_velocity, final_acceleration(n-3));
end


fclose(fid);


p1a ='See figure 1';
p1b ='See figure 2';
p2a = stat(1);
p2b = stat(2);
p2c = stat(3);
p2d = stat(4);
p2e = stat(5);
p2f = stat(6);
p2g = stat(7);
p3 = evalc('type report.txt');



