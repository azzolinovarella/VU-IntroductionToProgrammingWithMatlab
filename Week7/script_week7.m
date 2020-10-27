%% Week 7
%% First part
coded    = caesar('ABCD',  3)
decoded  = caesar(coded,  -3)
wrap     = caesar('1234', 96)
back     = caesar(wrap,  -96)
%% Second part
matrix = sparse2matrix({[2 3], 0, [1 2 3], [2 2 -3]})