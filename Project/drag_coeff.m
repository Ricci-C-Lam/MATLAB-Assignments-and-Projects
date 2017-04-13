function [Cd] = drag_coeff(u, v, w)
% DRAG_COEFF returns the drag coefficient Cd for the input velocities.
% The coefficient varies with Mach number Ma.
% Here, Ma = sqrt(u^2+v^2+w^2)/Csound where Csound = 340 m/s
% is the speed of sound.
% Call format: [Cd] = drag_coeff(u, v, w)

Ma = sqrt(u^2+v^2+w^2)/340;
if  Ma <= 0.9
    Cd = 0.2;
elseif Ma <= 1.1 
    Cd = 0.2 + (0.08/.2)*(Ma-0.9);
elseif Ma <= 3
    Cd = 0.28 - (0.08/1.9)*(Ma-1.1);
else
    Cd = 0.2;
end
end % function drag_coeff