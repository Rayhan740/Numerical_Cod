% Tylor series f(x+h) = f(x) + f'(x)h + f''(x)/2! * h^2 + f'''(x)/3! h^3
% Provided that all derivatives of f(x) are continuous and exist in the
% interval [x,x+h]

%% Find the value of f(6) given that f(4) = 125, f'(4) = 74, f''(4) = 30, f'''(4)= 6 and all
% other higher derivatives of f(x) at x = 4 are zero.

%% Initial guesses
x = 4;
h = 2;

%% Given values 
f1 = 125;
f2 = 74;
f3 = 30;
f4 = 6;


%% Declaring tylor series upto 4 term because others are zero.
fn = f1 + f2*h + (f3/2)*h*h + (f4/(3*2))*h*h*h;
