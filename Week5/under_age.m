function ret = under_age(age, limit)
    if nargin == 1
        limit = 21;
    end
    
    ret = age < limit;
end