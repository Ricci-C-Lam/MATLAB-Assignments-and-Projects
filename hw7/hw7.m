clear all;
close all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 5;

fib = zeros(1, 40);
fib(1) = 1;
fib(2) = 1;
for n = 3:40
    fib(n) = fib(n-1) + fib(n-2);
end
p1a = fib;

sumA = 0;
for n = 1:40
    if n <= 10
       sumA =  sumA + fib(n);
    end
    if n >= 25
        sumA = sumA + fib(n);
    end
end
p1b = sumA;

sumB = 0;
for n = 1:40
    if (n/5)~=(int8(n/5))
        sumB = sumB + fib(n);
    end
end
p1c = sumB;

sumC = 0;
run = 0;
for n = 1:40
    sumC = sumC + 1;
    run = run + fib(n);
    if run >= 90000
        break
    end
end
p1d = sumC;

sumD = 0;
mult = 1;
for n = 1:40
    sumD = sumD + 1;
    mult = mult*fib(n);
    if mult >= 90000
        break
    end
end
p1e = sumD;

diag1(1:10) = 2;
diag2(1:9) = -1;
diag3 = diag2;
matA = diag(diag1)+diag(diag2,1)+diag(diag3,-1);
intans = [1 0 0 0 0 0 0 0 0 -1]'; 
intermat = inv(matA);
p2 = intermat*intans;

load('f.mat');

p3a = reshape((repmat(f,3,1)),1,3*length(f));

superf = zeros(1, length(f));
superf(1:3) = f(199:201);
superf(4:201) = f(1:198);
p3b = superf;

testZ = f;
testA = ones(1,201);
testB(1:201) = 2;
testC = f>testA;
testD = f<testB;
testE = testC == testD;
testZ(testE) = 0;
p3c = testZ;

matB = zeros(1,201);
matB(testE) = f(testE);
p3d = matB;

p4a = evalc('help projectile1D');
time = 0:0.01:10;
p4b = 500-(4.905*(time.^2));
[t, z, w] = projectile1D(500, 0, 10, 1);
p4c = t;
p4d = z;
p4e = w;
[T, Z, W] = projectile1D(500, 0, 10, 0.01);
p4f = T;
p4g = Z;
p4h = W;

figure(1);
plot(time, p4b,'g'); hold on;
plot(t,z,'c'); hold on;
plot(T,Z,'r'); hold on;
title('Plots of Height vs. Time in Free Fall');
xlabel('Time (s)');
ylabel('Height (m)');
legend('Analytical', 'Euler w/ dt=1s', 'Euler w/ dt=0.01s');
p4i = 'see figure 1';

p5a = evalc('help rocket');
p5b = evalc('help rocket>gravity');
p5c = evalc('help rocket>thrust');

[A, B, C] = rocket(0.0001, 120);
p5d = C(length(C));
p5e = B(length(B));

figure(2);
plot(A, C, 'b');
title('Velocity of Rocket Over Time');
xlabel('Time (s)');
ylabel('Velocity (m/s)');
p5f ='See figure 2';

figure(3);
plot(A, B, 'k');
title('Height of Rocket Over Time');
xlabel('Time (s)');
ylabel('Height (m)');
p5g = 'See Figure 3';

