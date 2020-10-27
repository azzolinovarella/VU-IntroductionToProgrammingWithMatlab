function summa = halfsum(A)
    summa = 0;
    [rows columns] = size(A);
    for r = 1:rows
        for c = 1:columns
            if c >= r
                summa = summa + A(r, c);
            end
        end
    end
end
