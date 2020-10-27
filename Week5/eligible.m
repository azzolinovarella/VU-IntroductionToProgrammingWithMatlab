function admit = eligible(v, q)
    % v --> Verbal portion; q --> quantitative portion
    admit = ((v + q)/2 >= 92) && (v > 88) && (q > 88)
end