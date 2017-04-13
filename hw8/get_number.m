function number = get_number(numberfile)

%this functino extracts the numbers from a file via low level input
% the varable number is a vector
%call format; number = get_number(numberfile)

fid = fopen(numberfile);
n=1;
while ~feof(fid)
    num = fgetl(fid);
    [~, num] = strtok(num, 'r');
    num(1:2) = [];
    num = str2double(num);
    number(n) = num;
    n = n+1;

end

end