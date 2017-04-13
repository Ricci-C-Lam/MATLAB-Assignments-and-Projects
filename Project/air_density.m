function [rho] = air_density(x,y,z)
% AIR_DENSITY returns density rho of air at different altitude.
% Inputs x, y, and z are current position of the shuttle.
% Here, h is defined as sqrt(x^2+y^2+z^2)-Re where Re is Earth's radius.
% Call format: [rho] = air_density(x,y,z)

Re = 6.37e6;
h = sqrt(x^2+y^2+z^2)-Re;

if h >= 3.d5; H = 12.06e3; 
elseif h >= 2.e5; H = 8.92e3;
elseif h >= 1.5e5; H = 7.43e3;
elseif h >= 1.e5; H = 6.85e3;
elseif h >= 8.e4; H = 7.2e3;
elseif h >= 6.e4; H = 7.24e3;
elseif h >= 5.e4; H = 7.06e3;
elseif h >= 4.e4; H = 6.99e3;
elseif h >= 3.e4; H = 7.15e3;
elseif h >= 2.e4; H = 7.62e3;
elseif h >= 1.5e4; H = 8.16e3;
elseif h >= 1.e4; H = 9.21e3;
elseif h >= 8.e3; H = 9.46e3;
elseif h >= 6.e3; H = 9.7e3;
elseif h >= 5.e3; H = 9.82e3;
elseif h >= 4.e3; H = 9.95e3;
elseif h >= 3.e3; H = 10.06e3;
elseif h >= 2.e3; H = 10.19e3;
elseif h >= 1.e3; H = 10.3e3;
else H = 10.42;
end       
rho = 1.225*exp(-h/H);
if h < 1.e3; rho = 1.225; end
end % function air_density