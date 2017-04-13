close all;
clear all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 5;
fibf = zeros(1, 50);
fibf(1) = 1;
fibf(2) = 1;
for b = 3:50
    fibf(b) = fibf(b-1) + fibf(b-2);
end
p1a = fibf;
sum_tot = 0;
for n = 1:50
    sum_tot = fibf(n) + sum_tot;
end
p1b = sum_tot;
p1c = zeros(1,50);
p1c(1) = 0;
p1c(2) = p1a(2)/p1a(1);
for n = 3:50
    p1c(n) = p1a(n)/p1a(n-1);
end

seq_tot = 0;
for n = 1:50000
    seq_tot= seq_tot + 1/((n^2)+n);
end
p2a = seq_tot;
sum2 = 0;
for n = 1:10
    sum2 = sum2 + (2^n)/factorial(n);
end
p2b = sum2;
p2c = 0;
for m = 0:10 
    for n = 0:10
        p2c = p2c + (1/(3^(m+n)));
    end
end

p2d = 0;
for m = 0:20
    for n = 0:m
        p2d = p2d + (1/(3^(m+n)));
    end    
end

x = -1:0.1:1;
y = -2:0.1:2;
z = -3:0.1:3;

T = zeros(length(x),length(y),length(z));

for n = 1:length(z)
    for m = 1:length(y)
        for b = 1:length(x)
            T(b, m, n) = (x(b)^2)+(y(m)^2)+(z(n)^2);
        end
    end
end

p3a = T;
p3b = zeros(21, 41);
 for b = 1:length(x)
     for m = 1:length(y)
              finA = 0;TotA = 0;
         for n = 1:length(z)
             finA = finA + T(b, m , n);
             TotA = TotA + 1;
         end
         p3b(b, m) = finA/TotA;
     end
 end
 
 p3c = zeros(1,61);
 for n = 1:length(z)
     sumA = 0;totA = 0;
     for b = 1:length(x)
         for m = 1:length(y)
             sumA = sumA + T(b, m, n);
             totA = totA + 1;
         end
     end
     p3c(n) = sumA/totA;
 end
 
 p3dint = 0;
 for n = 1:length(z)
     for m = 1:length(y)
         for b = 1:length(x)
             p3dint = p3dint + T(b, m, n);
         end
     end
 end
 p3d = p3dint/(length(x)*length(y)*length(z));
 p4 = 'See Survey Data';