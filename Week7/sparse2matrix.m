function matrix = sparse2matrix(cell_vect)
    matrix_size = cell_vect{1};
    scalar = cell_vect{2};
    matrix = scalar*ones(matrix_size);
    for ii = 3:length(cell_vect)
        row = cell_vect{ii}(1);
        column = cell_vect{ii}(2);
        element = cell_vect{ii}(3);
        matrix(row, column) = element;       
    end   
end