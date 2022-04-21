%% Q-1
% Use Newton Raphson method for finding the square root of a real number
% from the equation x^2 - R = 0
% We will assume any real number to solve this problem x^2 - 3 = 0

%% Q-2
%The root x^3 = 4 is found by using Newton Raphson method the successive 
%iterative values of the root are given in the table below

%% Q-2-part
Iteraive_no = [0 1 2 3 4]
Values_of_root = [2.0000,1.6667,1.5911,1.5874,1.5874]

%% Q-2
% Calculate the iterative no at which you would trust at least 2 sig digits


%% For Q-1
%% Declaring initial conditions
x0 = 1;
maxIter = 7;
tolx = 1e-2;

%% Computation using newton raphson
x = x0;
xold = x0;

for i = 1:maxIter
    f = x*x - 3;
    df = 2*x;
    x = x - f/df;
    err = abs(x-xold);
    xold = x;
    if(err<tolx)
        break;
    end
end

%% For Q-2
M = 2;
val = 0.5*10^(2-M);

