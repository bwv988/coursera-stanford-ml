il = 2; % input layer
hl = 2; % hidden layer
nl = 4; % number of labels
nn = [ 1:18 ] / 10; % nn_params
X = cos([1 2 ; 3 4 ; 5 6]);
y = [4; 2; 3];
lambda = 4;

% Just to expose some intermediate results.
nn_params = nn;
input_layer_size = il;
hidden_layer_size = hl;
num_labels = nl;

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

[J grad] = nnCostFunction(nn, il, hl, nl, X, y, lambda)

% w/o regularization:

[J grad] = nnCostFunction(nn, il, hl, nl, X, y, 0)