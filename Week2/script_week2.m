%% Week 2
%% First part
odds = 1:2:100;
evens = 100:-2:2;

odds
evens
%% Second part
A = [1:5; 6:10; 11:15; 16:20];

v = A(:, 2)
A(end, :) = 0
%% Third part
A = [1:5; 6:10; 11:15; 16:20];

row = ones(1, size(A, 1));
column = ones(size(A, 2), 1);

result = row * A * column