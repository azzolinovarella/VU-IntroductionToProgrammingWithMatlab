%% Week 3
%% First part
area = tri_area(5,4)  % Should be 10
%% Second part
A = randi(100,4,5)
[top_left, top_right, bottom_left, bottom_right] = corners(A)
B = [1; 2]
[top_left, top_right, bottom_left, bottom_right] = corners(B)
%% Third part
fare = taxi_fare(3.5,2.25)  % Should be $11.75