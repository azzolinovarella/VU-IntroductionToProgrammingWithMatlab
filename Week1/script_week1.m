%% Week 1
%% First Part
initial_value = 1000;
n = 2;
i = 10/100;

debt = initial_value*(1+i)^n
%% Second Part
% Part 1:
dist1_m = 100;  % [dist1_m] = m
t1_s = 9.58;  % [t1_s] = s

dist1_km = dist1_m/1000; 
t1_h = t1_s/(60 * 60);
hundred = dist1_km/t1_h

% Part 2: 
dist2_km = 42.195;  % [dist2_km] = km
t2_h = 2 + 1/60 + 39/(60 * 60);  % [t2_h] = h

marathon = dist2_km/t2_h