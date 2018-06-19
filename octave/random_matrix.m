% initialize a random numbers matrix 
rand(10,11)

INIT_EPSILON = 1e-04
% it muts have be (2 * INIT_EPSILON) - INIT_EPSILON, as long we want 
% some nagative values. Therefore, it can't be only * INIT_EPSILON
Theta1 = rand(10,11) * (2 * INIT_EPSILON) - INIT_EPSILON;
Theta2 = rand(10,11) * (2 * INIT_EPSILON) - INIT_EPSILON;
Theta3 = rand(1,11) * (2 * INIT_EPSILON) - INIT_EPSILON;