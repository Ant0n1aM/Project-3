% System of Equations – Finding the Equation of a Parabola
% Ask the user for three sets of (x,y) 
x = input('Enter x values as a vector [x1 x2 x3]: ');
y = input('Enter y values as a vector [y1 y2 y3]: ');

% Fitting the parabola 
p = polyfit(x, y, 2);

% Reporting the output
fprintf("The solution to that system is " + ...
    "a = %.f, b = %.f, c = %.f.",p(1),p(2),p(3));
fprintf("\nSo, the equation for the parabola is, " + ...
    "y = %.fx^2 + %.fx + %.f\n",p(1),p(2),p(3));

% Graphing the parabola and the three points
xlim = -10:0.1:10;
plot(xlim, polyval(p,xlim),'green')
hold on 
plot(x,y,'ro','linewidth',2,'Color',"b")
grid on 
title("Graph of Polynomial")