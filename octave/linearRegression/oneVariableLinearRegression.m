
%% Initialization
clear ; close all; clc


x = [0;1;2;3]

y = [4;7;7;8]
%y = [0;2;4;6]




%% ======================= Part 2: Plotting =======================
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
plotData(x, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 3: Cost and Gradient descent ===================

% Scale features and set them to zero mean
%fprintf('Normalizing Features ...\n');
%[x, mu, sigma] = featureNormalize(x);


X = [ones(m, 1), x(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters



fprintf('\nTesting the cost function ...\n')
% compute and display initial cost
J = computeCost(X, y, theta);
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 22.25\n');

fprintf('Program paused. Press enter to continue.\n');
pause;

fprintf('\nRunning Gradient Descent ...\n')

% Some gradient descent settings
iterations = 1500*2;
alpha = 0.01;



% run gradient descent
[theta, J_history] = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' 4.66\n  1.21\n\n');

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

% Use vector multiplication to predict
% Predict values for population x = 10 
predict1 = [1, 10] *theta;
fprintf('For x = 10, we predict %f\n - it should be 16.70',predict1);




% pause;

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');


%% ============= Part 4: Visualizing J(theta_0, theta_1) =============
fprintf('Visualizing J(theta_0, theta_1) ...\n')

% Grid over which we will calculate J
theta0_vals = linspace(-10, 10, 100);
theta1_vals = linspace(-1, 4, 100);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

% Fill out J_vals
for i = 1:length(theta0_vals)
   for j = 1:length(theta1_vals)
  t = [theta0_vals(i); theta1_vals(j)];
  J_vals(i,j) = computeCost(X, y, t);
   end
end


% Because of the way meshgrids work in the surf command, we need to
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;
% Plot J_vals as 15 contours spaced logarithmically between 0.01 and 100
contour(theta0_vals, theta1_vals, J_vals, logspace(-2, 3, 20))
xlabel('\theta_0'); ylabel('\theta_1');
hold on;
plot(theta(1), theta(2), 'rx', 'MarkerSize', 10, 'LineWidth', 2);



