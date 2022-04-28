%% Initial values 
h = 4; % Step size
t = 480; % Need to take 2 step
N = 120;
initialTemp = 1200;

%% for theta 1 
temp(1) = initialTemp + ((-2.2067*10^-12)*(1200^4-81*10^8))*h;

%% For theta 2 
for i = 1:N
    temp(i+1) = temp(i) + ((-2.2067*10^-12)*(temp(i)^4-81*10^8))*h;
    x(i+1) = i*h;
end    


%% For exact solution




plot(x,temp,'--g');