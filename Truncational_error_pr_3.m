%% For initial guesses
x1 = 3;
x2 = 6;
x3 = 9;
width = 3;

%% computational value
apprxInteg = (x1)^2 * width + (x2)^2 * width;
actInteg = (x3^3-x1^3)/x1;

%% Truncational value
truncErr = actInteg-apprxInteg;