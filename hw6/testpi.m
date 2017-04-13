function [api, nterm] = testpi(tol, method)

%testpi will take a given tolerance 'tol' and a method, either 
%'Leibniz' or 'Madhava' to analyze how many iterations ('nterm') it will 
%need to go through before it will bring the approxximation of pi,
%api to within the given tolerance. 
% Call Method: [api, nterm] = testpi(tol, method)

m = 0;
sum = 0;
api = 0;
switch method
    case 'Leibniz'
        while  (tol < (pi - api)) || (-tol > (pi - api))
            sum = sum + ((-1)^m)/(2*m+1);
            api = 4*sum;
            m = m + 1;
        end
        nterm = m;
    case 'Madhava'
        while (tol < (pi - api)) || (-tol > (pi - api))
            sum = sum + ((-3)^(-m))/(2*m+1);
            api = sqrt(12)*sum;
            m = m + 1;
        end
        nterm = m;

end
end
