function J = example1()

%generate 2D data with gaussian distribution
randn('seed', 0)
%mean
m = [0 0; 5 5]; 
%variance
S(:,:,1) = 1.5 * eye(2);
S(:,:,2) = eye(2);

n_points = [500 15];

X = [];
for i=1:2
    X = [X; mvnrnd(m(i,:), S(:,:,i), n_points(i))];
end
X = X';
%

%plot data
figure(1)
title('Initial data distribution and true clusters')
xlabel('x1')
ylabel('x2')
hold on
scatter(X(1, 1:500), X(2, 1:500), 'r.')
scatter(X(1, 501:515), X(2, 501:515), 'bo')
hold off
%

%k-means algo
m = 2;
[l, ~] = size(X);

randn('seed', 0)
theta_ini = rand(l, m);

[theta, bel, J] = k_means(X, theta_ini);
%

%plot data after k-means
figure(2)
title('Data clusters using k-means algo')
xlabel('x1')
ylabel('x2')
hold on
plot(X(1, bel == 1), X(2, bel == 1), 'r.')
plot(X(1, bel == 2), X(2, bel == 2), 'bo')
scatter(theta(1,:), theta(2,:), 'k+', 'LineWidth', 2)
hold off
%

end
