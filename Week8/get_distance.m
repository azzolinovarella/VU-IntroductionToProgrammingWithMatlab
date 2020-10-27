function distance = get_distance(city1, city2)
    [nums, text, everything] = xlsread('Distances.xlsx');
    all_cities = text(1, 2:end)';
    
    if (sum(strcmp(city1, all_cities)) + sum(strcmp(city2, all_cities))) ~= 2
        distance = -1;
        return
    end
    
    index_1 = find(strcmp(city1, all_cities)); index_2 = find(strcmp(city2, all_cities));
    distance = nums(index_1, index_2);

end