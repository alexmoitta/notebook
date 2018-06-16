function [jVal, gradient] = costFunction(data, theta)

X = data(:,[1:2]); %expectin 1s in first column
y = data(:,3);

prediction = X*theta;              % predictions of hypothesis on examples
sqrErrors   = (prediction - y).^2; % squared errors

m = length(y);
jVal = 1/(2*m) * sum(sqrErrors);

hypothesis = X * theta;
x = X(:,2);
alpha = 0.01;

theta(1) = theta(1) - alpha * (1/m) * sum(hypothesis-y);
theta(2) = theta(2) - alpha * (1/m) * sum((hypothesis-y) .* x); 

%theta(1) = theta(1) - (1/m) * sum(hypothesis-y);
%theta(2) = theta(2) - (1/m) * sum((hypothesis-y) .* x); 


gradient(1) = theta(1); %I don't know if its right.Ok????
gradient(2) = theta(2);

