function valid = valid_date(year, month, day)
    
    if nargin ~= 3
        % If the user provides a number of arguments that are not 3
        valid = false;
        return
    end
        
    if ~isscalar(year) || ~isscalar(month) || ~isscalar(day)
        % If the user provides arguments that are not scaler (e.g. vectors) 
        valid = false;
        return
    end
    
    if year ~= fix(year) || month ~= fix(month) || day ~= fix(day)
        % If the user provides non integers (e.g. day = 15.23)
        valid = false;
        return
    end
    
    if year < 1 || month < 1 || month > 12 || day < 1 || day > 31
        % Checking if the year, month and day assumes possible values
        valid = false;
        return  
    end
        
    % Months with 31 days
    month_31 = [1, 3, 5, 7, 8, 10, 12];
    % Months with 30 days
    month_30 = [4, 6, 9, 11];
    if (sum(month == month_31) == 1) && (1 <= day) && (day <= 31)
        valid = true;
        return
    elseif (sum(month == month_30) == 1) && (1 <= day) && (day <= 30)
        valid = true;
        return
    % In case of the month be 2 (i.e., Februrary)
    elseif (month == 2)   
        lap = ((year/4 == fix(year/4)) && (year/100) ~= fix(year/100)) || (year/400 == fix(year/400));
        if (lap == 1) && (1 <= day) && (day <= 29)
            valid = true;
            return
        elseif (lap == 0) && (1 <= day) && (day <= 28)
            valid = true;
            return
        else
            valid = false;
            return
        end
    else
        valid = false;
        return
    end
end