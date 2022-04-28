%% LU Decomposition method

A = [25,5,1;64,8,1;144,12,1];
b = [106.8,177.2,279.2];

%% Gauss Elimination

% Get augmented matrix
Ab = [A,b'];
n = 3;

L = eye(n);

%% Forward Elimination

% With A(1,1) as a pivot element
for i = 2:3
   alpha = Ab(i,1)/Ab(1,1);
   L(i,1) = alpha;
   Ab(i,:) = Ab(i,:) - alpha*Ab(1,:);
end

% With A(2,2) as a pivot element 
i = 3;
alpha = Ab(i,2)/Ab(2,2);
L(i,2) = alpha;
Ab(i,:) = Ab(i,:) - alpha*Ab(2,:);

U = Ab(1:n,1:n);

%% Now LZ = C

z(1) = b(1,1);
z(2) = b(1,2) - z(1)*L(2,1);
z(3) = b(1,3) - z(2)*L(3,2) - z(1)*L(3,1);

z = [z(1),z(2),z(3)];

%% Now UX = Z

x(3) = z(3)/U(3,3);
x(2) = (z(2) - U(2,3)*x(3))/U(2,2);
x(1) = (z(1) - U(1,2)*x(2)-U(1,3)*x(3))/U(1,1);

x = [x(1);x(2);x(3)]
