function f = piecewise2d(x, y)
%the function 'f' returns values along an implicit piecewise function that
%has already been defined
%
%call on the function 'f' by using the word 'piecewise2d(x, y)', where 'x'
%and 'y' are coordinates where you want a value to be evaluated at

if x>=0 && y>0
    f = x+y;
elseif x<0 && y>=0
    f = x-y;
elseif x<=0 && y<0
    f = -x-y;
elseif x>0 && y<=0
    f = -x+y;
else
f = 0;

end

end