close all;
clear all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 4;

p1a = evalc('help divisibility');
p1b = divisibility(105);
p1c = divisibility(154);
p1d = divisibility(1155);
p1e = divisibility(242550);

p2a = evalc('help piecewise');
p2b = piecewise(-pi/2);
p2c = piecewise(-1);
p2d = piecewise(0);
p2e = piecewise(1);
p2f = piecewise(pi/2);

p3a = evalc('help piecewise2d');
p3b = piecewise2d(1,1);
p3c = piecewise2d(1,-1);
p3d = piecewise2d(-1,-1);
p3f = piecewise2d(0,0);
p3g = piecewise2d(0,1);
p3h = piecewise2d(0,-1);
p3i = piecewise2d(1,0);
p3j = piecewise2d(-1,0);

p4a = evalc('help rgb_color');
p4b = rgb_color([1 1 1]);
p4c = rgb_color([1 1 0]);
p4d = rgb_color([0 1 1]);
p4e = rgb_color([1 0 1]);
p4f = rgb_color([1 0 0]);
p4g = rgb_color([0 1 0]);
p4h = rgb_color([0 0 1]);
p4i = rgb_color([0 0 0]);

p5a = evalc('help days_in_month');
p5b = days_in_month('JAN',0);
p5c = days_in_month('FEB',0);
p5d = days_in_month('FEB',1);
p5e = days_in_month('APR',0);
p5f = days_in_month('AUG',1);
p5g = days_in_month('OCT',0);
p5h = days_in_month('NOV',1);
p5i = days_in_month('Dec',0);


