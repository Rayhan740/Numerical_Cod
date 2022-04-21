%% Qustion
% The root of the eqn f(x) = 0 is found by Newton-Raphson method.The
% initial estimate of the root is x0 = 3, f(3) = 5. The angle the line
% segment to the function f(x) makes at x = 3 is 57 degree w.r.t the x axis. 
% Calculate the next estimate of the root x1. 

%% Formula 
% tanalpha = f(x)/(x0-x1)

%% Declaring initial values 
x0 = 3;
fx = 5;
x1 = (3-(5/tand(57)))