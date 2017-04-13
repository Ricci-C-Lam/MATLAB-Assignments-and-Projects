function [ T, Z, W] = rocket(dt, Tf)

%The Function is used to calculate the vertical movement 
%and height of a 10 kg rocket over time. 
%Call Format: [T, Z, W] = rocket(dt, Tf)

T(1) = 0;
Z(1) = 0;
W(1) = 0;
n = 1;
while T(n) <= Tf
    
    W(n+1) = W(n) + (((-1)*gravity(Z(n)))+ (thrust(T(n))/10))*dt;
    Z(n+1) = Z(n) + W(n+1)*dt;
    T(n+1) = T(n) + dt;
    
    n = n + 1;
end

end

function [Th] = thrust(t)

%The Function Thrust tells the function rocket what 
%amount of thrust the rocket has at any given moment
%Call Format: [Th] = thrust(t)

if (t>=0) && (t<2)
    Th = 675;
elseif (t>=2) && (t<4)
    Th = 1362;
else
    Th = 0;
end

end

function [g] = gravity(z)

%The function gravity tells the function 'rocket' how much
%pull from the gravity of Earth 
% Call Format: [g] = gravity(z)

 if (z>=0) && (z<10000)
     g = 9.81*(1-(z/10000)^3);
 else
     g = 0;
 end

end
