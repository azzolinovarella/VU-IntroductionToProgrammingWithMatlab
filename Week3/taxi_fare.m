function ret = taxi_fare(d, t)
    ret = 5 + 2*ceil(d - 1) + 0.25 * ceil(t);
end 