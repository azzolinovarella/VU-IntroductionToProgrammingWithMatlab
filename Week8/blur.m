function output = blur(img, w)
    [rows, columns] = size(img);
    output = uint8(zeros(rows, columns));
    
    for ii = 1:rows
        for jj = 1:columns
            if (ii - w >= 1) && (ii + w <= rows) && (jj - w >= 1) && (jj + w <= columns)  % For the 'central' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii + w), (jj - w):(jj + w)), 'all'));
                
            elseif (ii >= 1) && (ii <= w) && (jj - w >= 1) && (jj + w <= columns)  % For the 'top' points
                output(ii, jj) = uint8(mean(img((ii):(ii + w), (jj - w):(jj + w)), 'all'));
            
            elseif (ii >= rows - w) &&  (ii <= rows) && (jj - w >= 1) && (jj + w <= columns)  % For the 'bottom' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii), (jj - w):(jj + w)), 'all'));
                
            elseif (ii - w >= 1) && (ii + w <= rows) && (jj >= 1) && (jj <= w)  % For the 'left' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii + w), (jj):(jj + w)), 'all'));
                            
            elseif (ii - w >= 1) && (ii + w <= rows) && (jj >= columns - w) && (jj <= columns) % For the 'right' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii + w), (jj - w):(jj)), 'all'));
                
            elseif (ii >= 1) && (ii <= w) && (jj >= 1) && (jj <= w)  % For the 'top left' points
                output(ii, jj) = uint8(mean(img((ii):(ii + w), (jj):(jj + w)), 'all'));
                
            elseif (ii >= 1) && (ii <= w) && (jj >= columns - w) && (jj <= columns) % For the 'top right' points
                output(ii, jj) = uint8(mean(img((ii):(ii + w), (jj - w):(jj)), 'all'));
                
            elseif (ii >= rows - w) &&  (ii <= rows) && (jj >= 1) && (jj <= w)  % For the 'bottom left' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii), (jj):(jj + w)), 'all'));
            
            elseif (ii >= rows - w) &&  (ii <= rows) && (jj >= columns - w) && (jj <= columns) % For the 'bottom right' points
                output(ii, jj) = uint8(mean(img((ii - w):(ii), (jj - w):(jj)), 'all'));    
                
            end
        end
    end    
end
