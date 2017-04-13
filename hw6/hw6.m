clear all; 
close all;
clc;
format long;
name = 'Ricci Lam';
id = 'A12992490';
hw_num = 6;
 x = [-20:0.1:20];
 p1a = x;
 p1b = zeros(1, length(x));
 for n = 1:length(x)
      p1b(n) = cos(1.2*x(n))*exp(-(x(n)/8)^2);
 end
 
 maxnum = 0;
 for n = 2:length(p1b)-1
     if ((p1b(n-1)< p1b(n)) && (p1b(n)>p1b(n+1)))
         maxnum = maxnum +1;
     end
 end
 
 maxxval = zeros(1, maxnum);
 maxfval = maxxval;
 maxind = 1;
 for n = 2:length(p1b)-1
     if (p1b(n-1)<p1b(n)) && (p1b(n)>p1b(n+1))
         maxxval(maxind) = x(n);
         maxfval(maxind) = p1b(n);
         maxind = maxind + 1;
     end
 end
 
p1c = maxnum;
p1d = maxxval;
p1e = maxfval;

minnum = 0;
 for n = 2:length(p1b)-1
     if ((p1b(n-1)> p1b(n)) && (p1b(n)< p1b(n+1)))
         minnum = minnum +1;
     end
 end
 
 minxval = zeros(1, minnum);
 minfval = minxval;
 minind = 1;
 for n = 2:length(p1b)-1
     if (p1b(n-1)>p1b(n)) && (p1b(n)<p1b(n+1))
         minxval(minind) = x(n);
         minfval(minind) = p1b(n);
         minind = minind + 1;
     end
 end

 p1f = minnum;
 p1g = minxval;
 p1h = minfval;
 
 xzerot = 0;
 for n = 2:length(p1b)
     if ((p1b(n)>0) && (p1b(n-1)<0)) ||...
             ((p1b(n)<0) && (p1b(n-1)>0))
         xzerot = xzerot + 1;
     end
 end
 
 xzerox = zeros(1, xzerot);
 xzerof = xzerox;
 zeroi = 1;
 for n = 2:length(p1b)
     if ((p1b(n)>0) && (p1b(n-1)<0)) ||...
             ((p1b(n)<0) && (p1b(n-1)>0))
         xzerox(zeroi) = x(n-1);
         xzerof(zeroi) = p1b(n-1);
         zeroi = zeroi + 1;
     end
 end
 
 p1i = xzerot;
 p1j = xzerox;
 p1k = xzerof;
 
 figure(1);
 plot(p1a, p1b, 'k'); hold on;
 plot(p1d, p1e, 'co'); hold on;
 plot(p1g, p1h, 'rd'); hold on;
 plot(p1j, p1k, 'gs'); hold on;
 title('Graph of f(x)');
 xlabel('X Value Inputs');
 ylabel('f(x) Outputs on Y');
 legend('f(x)', 'Local Max', 'Local Min', 'Zero Crossing');
 
 p1l = 'See Figure 1';
 
 bnc = 0;
 h = 10;
 d = 10;
 while d < 69.99
     h = h*(.75);
     d = d +2*h;
     bnc = bnc +1;
 end
 
 p2a = bnc;
 p2b = h;
 
 hnew = 10;
 dnew = 10;
 for n = 1:32
     hnew = hnew*(.75);
     dnew = dnew + 2*hnew; 
 end
 
 p2c = hnew;
 p2d = dnew;
 
 load('stringA.mat');
 
 TAcount = 0;
 TCcount = 0;
 TGcount = 0;
 
 for n = 2:length(stringA)
     if strcmp(stringA(n-1:n), 'TA') == 1
         TAcount = TAcount + 1;
     elseif strcmp(stringA(n-1:n), 'TC') == 1
         TCcount = TCcount + 1;
     elseif strcmp(stringA(n-1:n), 'TG') == 1
         TGcount = TGcount + 1;
     end
 end
 p3a = TAcount;
 p3b = TCcount;
 p3c = TGcount;
 
 TAGcount = 0;
 GATcount = 0;
 CATcount = 0;
 
 for n = 3:length(stringA)
     if strcmp(stringA(n-2:n), 'TAG') == 1
         TAGcount = TAGcount + 1;
     elseif strcmp(stringA(n-2:n), 'GAT') == 1
         GATcount = GATcount + 1;
     elseif strcmp(stringA(n-2:n), 'CAT') == 1
         CATcount = CATcount + 1;
     end
 end
 
 p3d = TAGcount;
 p3e = GATcount;
 p3f = CATcount;
 
 [w, q] = testpi(1*10^(-6), 'Leibniz');
 [e, r] = testpi(1*10^(-6), 'Madhava');
 
 p4a = evalc('help testpi');
 p4b = w;
 p4c = q;
 p4d = e;
 p4e = r;
 p4f = 'Madhava series converges faster';