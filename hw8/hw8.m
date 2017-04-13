clear all;
close all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 8;

%%Problem 1

p1a = {'a',2,'b',4,'c',6,'d',8,'e',10,'f',12,'g',14,'h',16,'i',18,'j',20,'k',22 ...
    'l',24,'m',26,'n',28,'o',30,'p',32,'q',34,'r',36,'s',38,'t',40,'u',42,'v' ...
    'w',44,'x',46,'y',48,'z',50,52};

p1b = p1a;

for n = 1:52
   if (p1a{n}/4) == (int8(p1a{n})/4)
       p1b{n} = 'X';
   else
       p1a{n} = p1b{n};
   end
    
end

p1c = {'abcdefghijklmnopqrstuvwxyz'; [2:2:52]'};
p1d = p1c;
p1d{1}(24) = 'X';
p1d{2} = [1:1:26]';

%% Problem 2
element.name = 'helium';
element.symbol = 'He';
element.atomicNumber = int8(2);
element.atomicWeight = 4.0;
element.electrons = [2 0 0 0 0 0 1];
p2a = element;
p2b = p2a;
p2b.name = 'Helium';
p2c = p2b;
p2c.atomicWeight = 4.002602;
p2d = p2c;
p2d.electrons(7) = 0;

%% Problem 3
 K = {@(C) C+273.15 ; @(F) (5/9)*(F+459.67)};
 p3a = K;
 p3b = K{1}(20);
 p3c = K{2}(90);
 
R = 0.08206;

P = @(n, V, T) (n*R*T)/V;
p3d = P;
p3e = P(0.12, 4.0, K{1}(27));
p3f = P(0.12, 4.0, K{2}(90));

%% Problem 4

p4a = evalc('help get_number');
p4b = get_number('number.txt');
p4c = evalc('help digitsum');
p4d = digitsum(p4b(1));
p4e = digitsum(p4b(2));
p4f = digitsum(p4b(3));
p4g = digitsum(p4b(4)); 
 




