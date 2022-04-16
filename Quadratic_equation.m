% Solution for a simple quadratic equation 
f1 =[1 4 3];
f2 = [1 -1 -1];
f3 = [1 2 1 1];

first_eq = roots(f1);
second_eq = roots(f2);
third_eq = roots(f3);

%% Built in function

a = 1;
b = 4;
c = 3;
check = b.^2 - 4*a*c ;
solBuilt = ((-b + sqrt(check))/2*a)
solBuilt = ((-b - sqrt(check))/2*a)

%% for plotting 
x = [0:20];
y = [x.^2 + 4*x + 3];

plot(x,y)
