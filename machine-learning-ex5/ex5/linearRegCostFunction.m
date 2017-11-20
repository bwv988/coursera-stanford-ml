function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

% Define some variables for later use.
v = (X * theta - y);
u = v .^ 2;

% We are not regularizing theta0, so setting it to 0.
theta(1) = 0;

% Cost function, vectorized, avoding loops. ;)
J = 1 / (2 * m) * (sum(u) + lambda * sum(theta .^ 2));

% Now calc. the gradient. The below will take care of the summation as well.
w = X' * v;

grad = (1 / m) * (w + lambda * theta);

% =========================================================================

grad = grad(:);

end
