function days = days_in_month(month,leap)
%This function tells you the number of days in a month based on the 2
%inputs month and year
%
%To use this function, enter months by their 3 letter abbreviations in all
%capital letters (ie 'JAN') and enter a value of 1 or 0 to denote if it is a
%leap year or not

switch (month)
    case {'JAN','MAR','MAY','JUL','AUG','OCT','DEC'}
         switch (leap)
            case 1
                days = 31;
            case 0
                days = 31;
            otherwise
                days = 'Invalid Inputs';
         end
    case {'APR','JUN','SEP','NOV'}
         switch (leap)
            case 1
                days = 30;
            case 0
                days = 30;
            otherwise
                days = 'Invalid Inputs';
         end
    case 'FEB'
        switch (leap)
            case 1
                days = 29;
            case 0
                days = 28;
            otherwise
                days = 'Invalid Inputs';
        end
    otherwise
        days = 'Invalid inputs';
 
end


end