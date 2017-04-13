function color = rgb_color(rgb)

% The function rgb_color(rgb) is used to mix colors based on 
% combinations of 0's and 1's that are arranged in a row vector with a length of three digits.
%
% Use the command rgb_color(rgb) to call the function. the entry 'rgb'
% should be a row vector with three elements consisting of either 0's
% and/or 1's

if length(rgb)~= 3
     color = 'Invalid Input';
else
    if rgb == [1 0 0]
        color = 'red';
    else
        if rgb == [1 1 1]
            color = 'white';
        else 
            if rgb == [0 1 0]
                color = 'green';
            else 
                if rgb == [0 0 1]
                    color = 'blue';
                else
                    if rgb == [1 1 0]
                        color = 'yellow';
                    else
                        if rgb == [1 0 1]
                            color = 'magenta';
                        else
                            if rgb == [0 1 1]
                                color = 'cyan';
                            else
                               if rgb == [0 0 0]
                                    color = 'black';
                               else
                                    color = 'Invalid input';
                               end
                            end
                        end
                    end
                end
            end
        end
    end
end
end