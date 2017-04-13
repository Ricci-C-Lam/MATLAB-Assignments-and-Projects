function dsum = digitsum(n)

% this uses an ascii format of summing up the integers in a nmber
% call format: dsum = digitsum(n)


n = abs(n);
dsum = sum(int2str(n)-48);


end