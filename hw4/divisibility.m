function div = divisibility(a);
% function DIVISIBILITY returns logical answers of whether a number is
%divisible by either 2,3,5,7,or 11 as a 1x5 matrix
%
%call on divisibility by using the word 'divisibility(a)' with the variable
%'a' being the number that you would like to check for divisibility

x = a/2;
X = int64(x);

b = a/3;
B = int64(b);

c = a/5;
C = int64(c);

d = a/7;
D = int64(d);

e = a/11;
E = int64(e);

p1 = false;
p2 = false;
p3 = false;
p4 = false;
p5 = false;

if x == X
    p1 = true;
end
if b == B
    p2 = true;
end
if c == C
    p3 = true;
end
if d == D
    p4 = true;
end
if e ==E
    p5 = true;
end



div = [p1 p2 p3 p4 p5];


end
