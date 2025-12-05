% Derivative/Integral – Analyzing Position,Velocity, & Acceleration
% Creating Arrays 
t = 0:1:12;
v = [0 1 1.8 2.4 2.6 2.7 2.6 2.2 2 1.9 1.8 1.8 1.8];

% Determine the acceleration function
a = zeros(size(v));   
dt = 1;  

% Forward difference at t=0
a(1) = (v(2) - v(1)) / dt;

% Central differences for interior points
for i = 2:length(v)-1
    a(i) = (v(i+1) - v(i-1))/(2*dt);
end

% Backward difference at last point
a(end) = (v(end) - v(end-1))/dt;

% Determine the position function
x = zeros(size(v));
for i = 2:length(t)
    x(i) = x(i-1) + 0.5*(v(i) + v(i-1))*dt;
end