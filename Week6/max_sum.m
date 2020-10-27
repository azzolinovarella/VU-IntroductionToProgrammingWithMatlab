function [summa, index] = max_sum(v, n)
    if n > size(v, 2)
        summa = 0;
        index = -1;
        return
    end
    
    summa = sum(v(1:n));
    index = 1;
    for k = 2:(size(v, 2) - n + 1)
        if sum(v(k:(k + n - 1))) > summa
            summa = sum(v(k:(k + n - 1)));
            index = k;
        end
    end               
end