function [T, Z, W] = projectile1D(Zo, Wo, Tf, dt)

% projectile1D: figures out the one dimensional
% motion of an object in freefall 
%Call Format: [T, Z, W] = projectile1D(Zo, Wo, Tf, dt)


n = 1;
g = 9.81;
T(1) = 0;
Z(1) = Zo;
W(1) = Wo;
while T(n) <= Tf
    Z(n+1) = Z(n) + W(n)*dt;
    W(n+1) = W(n) - g*dt;
    T(n+1) = T(n) + dt;
    n = n+1;
end
end