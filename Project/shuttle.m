function [T, X, Y, Z, U, V, W, h] = shuttle(Xo, Yo, Zo, Uo, Vo, Wo)
%This Function calculates the trajectories of varous possible shuttle
%reentries. 
%
%call format: [T, X, Y, Z, U, V, W, h] = shuttle(Xo, Yo, Zo, Uo, Vo, Wo)


n = 1;
T(1) = 0;
X(1) = Xo;
Y(1) = Yo;
Z(1) = Zo;
U(1) = Uo;
V(1) = Vo;
W(1) = Wo;
dt = 1;
Re = (6.37*(10^6));
Me = (5.97*(10^24));
G = (6.67408*(10^(-11)));
w = (7.292*(10^(-5)));
m = 75000;
A = 16*pi;
h(1) = sqrt((Xo^2)+(Yo^2)+(Zo^2))-Re;


while h(n) >= 0
   Cd = drag_coeff(U(n), V(n), W(n));
   rho = air_density(X(n), Y(n), Z(n));
   Vmag = sqrt((U(n)^2)+(V(n)^2)+(W(n)^2));
   U(n+1) = U(n)-((-2)*w*V(n)+Cd*((rho*A)/(2*m))*U(n)*Vmag+G*Me*((X(n))/((((X(n))^2)+((Y(n))^2)+((Z(n))^2))^(1.5))))*dt;
   V(n+1) = V(n)-((2)*w*U(n)+Cd*((rho*A)/(2*m))*V(n)*Vmag+G*Me*(Y(n)/((X(n)^2)+(Y(n)^2)+(Z(n)^2))^1.5))*dt;
   W(n+1) = W(n)-(Cd*((rho*A)/(2*m))*W(n)*Vmag+G*Me*(Z(n)/((X(n)^2)+(Y(n)^2)+(Z(n)^2))^1.5))*dt;
   X(n+1) = X(n)+U(n+1)*dt;
   Y(n+1) = Y(n)+V(n+1)*dt;
   Z(n+1) = Z(n)+W(n+1)*dt;
   T(n+1) = T(n) + dt;
   h(n+1) = sqrt((X(n+1)^2)+(Y(n+1)^2)+(Z(n+1)^2))-Re;
   n = n+1;
end


end