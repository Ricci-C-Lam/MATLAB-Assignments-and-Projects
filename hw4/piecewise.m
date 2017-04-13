function g =piecewise(x)

% g returns y-values for a given x according to a pre-assigned piecewise function
%
% Call on the funciton by using the text 'piecewise(x)' with x being the
% number that you would like to have evaluated. 

if x<-1
    g = x+3;
    
elseif x>=-1 && x<=1
    g = (x^3)+3;
    
elseif x>1
    g = 4*exp(1-(1/x));
    
else
    disp('please enter a real number');
    
end
end