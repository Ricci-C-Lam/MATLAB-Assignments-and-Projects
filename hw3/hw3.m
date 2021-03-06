clear all;
close all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 3;
A1 = [1:2:200];
A1 = reshape(A1, 10, 10);
A2 = [2:2:200];
A2 = reshape(A2, 10, 10);
p1a = A1 == A2;
p1b = false;
p1c = isprime(A1);
p1d = find(p1c==1);
newp1c = A1;
newp1c(p1d)=0;
p1e = newp1c;
matA = eye(5);
matB = rot90(matA);
matC = matA+matB;
matC(3,3)=1;
p2a = repmat(matC,2,2);
p2b = sum(p2a(5,:));
p2c = 2*sum(diag(p2a));
p2d = sum(sum(p2a));
p2e = p2a;
new1 = find(p2a==0);
p2e(new1)=5;
p3a = clock;
p3b = sprintf('%x:%d:%i', p3a(1,2), p3a(1,3), p3a(1,1));
p3c = sprintf('%g:%d:%5.2f', p3a(1,4), p3a(1,5), p3a(1,6));
p3d = p3c(1:8);
p3e = sprintf('%s %s', p3b, p3d);
B = [exp(1/2) exp(1/4) exp(1/3);exp(1/6) exp(1) exp(1/7);exp(1) exp(1/7) exp(1/5)];
p4a =sprintf ('%6.3f \n%6.3f \n%6.3f\n', B(1,1), B(2,1), B(3,1));
p4b =sprintf ('%6.3f %6.3f %6.3f', B(1,1), B(1,2), B(1,3));
p4c = sprintf('%7.2f %7.2f %7.2f \n%7.2f %7.2f %7.2f \n%7.2f %7.2f %7.2f', B(1,1), B(1,2), B(1,3), B(2,1), B(2,2),B(2,3),B(3,1),B(3,2),B(3,3));
p4d = sprintf('%11.2f %11.2f %11.2f \n%11.2f %11.2f %11.2f \n%11.2f %11.2f %11.2f', B(1,1), B(1,2), B(1,3), B(2,1), B(2,2),B(2,3),B(3,1),B(3,2),B(3,3));
load('temperature.dat')
temp1 = temperature(:,1);
p5a = temp1';
p5b = temperature(:,14)';
avgr = mean(p5b);
temp2 = p5b;
temp2(:,:)=avgr;
p5c = temp2;
p5d = [max(p5b) min(p5b)];
p5e = [p5a(find(p5b==max(p5b))) p5a(find(p5b==min(p5b)))]; 
temp3 = temperature(:,2:13);
 
figure(1);
plot_year = [p5a];
plot_tempanav = [p5b];
plot(plot_year,plot_tempanav,'-k');
hold on
plot(plot_year, max(p5b), 'rs');
plot(plot_year, min(p5b), 'gd');
xlabel('Year'); ylabel('temperature (F)');
title('Average Annual Temperatures of San Diego (1875-2014)');
hold off;
saveas(figure(1), 'figure1.png', 'png');
p5f = 'See figure 1';

p5g = temperature(140,2:13);
p5h = (1:12);
figure(2);
bar(p5h,p5g);
xlabel('Month');ylabel('Temperature (F)');
title('Average Monthlty Temperatures in San Diego in 2014');
saveas(figure(2), 'figure2.png', 'png');
p5i = 'See figure 2';

p5j = temperature(125:140, 2:13);
save( 'temperature_2000_2014.dat', 'p5g', '-ascii');

