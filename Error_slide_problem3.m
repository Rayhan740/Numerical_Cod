%% Initial Guesses 
x = 2;


%% for different value of h we get f'(2)
h = [0.3,0.15,0.10,0.01,0.001];
fx = 7*exp(0.5*x);
fxh = 7*exp(0.5*(x+h));
apprxVal = (fxh-fx)./h;

%% to get error
%i = [1,2,3,4];
%Ea = (apprxVal(i)-apprxVal(i+1))./apprxVal(i);
%EaPecent = Ea*100;

%% for loop

for i=1:4
    Ea(i) = (apprxVal(i)-apprxVal(i+1))/apprxVal(i);
    EaPercent(i) = Ea(i)*100;
    err = EaPercent(i);
    if err<= 0.2
        break;
    end
end


