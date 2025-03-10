function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%




a1 = X;                   %X is 5000x400

m1 = size(a1, 1);
a1 = [ones(m1,1) a1];     %a1 is 5000x401  
z1 = a1*Theta1';          %Theta1' is 401x25

a2 = sigmoid(z1);         %z is 5000x25

m2 = size(a2, 1);
a2 = [ones(m2,1) a2];     %a2 is 5000x26
z2 = a2*Theta2';          %Theta2' is 26x10

h=sigmoid(z2);            %z2 is h is 5000x10

[~,p]=max(h,[],2);

% =========================================================================


end
