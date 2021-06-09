function J = example2()

%generate 2D data
n_points = [600 200 200 100];

noise = 0.5;

X = [];
%construction of the 1st cluster (circle, center (0,0), R=6)
R = 6;
mini = -R;
maxi = R;
step = (maxi-mini)/(fix(n_points(1)/2)-1);
for x = mini:step:maxi
    y1 = sqrt(R^2-x^2) + noise*(rand - 0.5);
    y2 = -sqrt(R^2-x^2) + noise*(rand - 0.5);
    X = [X; x y1; x y2];
end

%construction of the 2nd cluster (ellipse, centered at (0,0), a=3, b=1)
a = 3;
b = 1;
mini = -a;
maxi = a;
step = (maxi-mini)/(fix(n_points(2)/2)-1);
for x = mini:step:maxi
    y1 = b*sqrt(1-x^2/a^2) + noise*(rand - 0.5);
    y2 = -b*sqrt(1-x^2/a^2) + noise*(rand - 0.5);
    X = [X; x y1; x y2];
end

%construction of the 3rd cluster (line segment, endpoints (8,-7), (8,7))
mini = -7;
maxi = 7;
step = (maxi-mini)/(n_points(3)-1);
x_coord = 8;
for y = mini:step:maxi
    X = [X; x_coord + noise*(rand - 0.5) y + noise*(rand - 0.5)];
end

%construction of the 4th cluster (semicircle, center (13,0), R=3, y<0)
R = 3;
x_center = 13;
mini = x_center - R;
maxi = x_center + R;
step = (maxi-mini)/(n_points(4)-1);
for x = mini:step:maxi
    y = -sqrt(R^2-(x-x_center)^2) + noise*(rand - 0.5);
    X = [X; x y];
end
X = X';
%


%plot data
figure(1)
title('Initial data distribution and true clusters')
xlabel('x1')
ylabel('x2')
hold on
scatter(X(1, 1:600), X(2, 1:600), 'r.')
scatter(X(1, 601:800), X(2, 601:800), 'b.')
scatter(X(1, 801:1000), X(2, 801:1000), 'g.')
scatter(X(1, 1001:1100), X(2, 1001:1100), 'y.')
hold off
%


%k-means algo
m = 4;
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
plot(X(1, bel == 2), X(2, bel == 2), 'b.')
plot(X(1, bel == 3), X(2, bel == 3), 'g.')
plot(X(1, bel == 4), X(2, bel == 4), 'y.')
scatter(theta(1,:), theta(2,:), 'k+', 'LineWidth', 2)
hold off
%

end
