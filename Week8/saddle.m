function indices = saddle(M)
    [rows, columns] = size(M);
    indices = [];
    indices_row = 1;
    for ii = 1:rows
        max_val = max(M(ii, :));
        jj = find(M(ii, :) == max_val);  % Getting the column of all the possible saddle point in the row ii. 
        
        for poss_jj = jj
            min_val = min(M(:, poss_jj));
            if max(M(ii, :)) == min(M(:, poss_jj))
                indices(indices_row, 1) = ii;
                indices(indices_row, 2) = poss_jj;
                indices_row = indices_row + 1;     
            end
        end
    end
end