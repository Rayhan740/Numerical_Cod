% Solve Ax = b using naive gaussian elimination
A = [1,1,1;2,1,3;3,4,-2];
b = [4,7,9];

%% Gauss Elimination

% Get augmented matrix
Ab = [A,b'];
n = 3;

%% Forward Elimination

% With A(1,1) as a pivot element
alpha = Ab(2,1)/Ab(1,1);
Ab(2,:) = Ab(2,:) - alpha*Ab(1,:);
alpha = Ab(3,1)/Ab(1,1);
Ab(3,:) = Ab(3,:) - alpha*Ab(1,:);

% With A(2,2) as a pivot element 
alpha = Ab(3,2)/Ab(2,2);
Ab(3,:) = Ab(3,:) - alpha*Ab(2,:);

%% Back Substitution
x = zeros(3,1);
x(3) = Ab(3,end)/Ab(3,3);
x(2) = (Ab(2,end)-Ab(2,3)*x(3))/Ab(2,2);
x(1) = (Ab(1,end)-(Ab(1,3)*x(3)+ Ab(1,2)*x(2)))/Ab(1,1)

