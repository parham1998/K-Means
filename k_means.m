function [theta, bel, J] = k_means(X, theta_ini)

[~, N] = size(X);
[l, m] = size(theta_ini);

e = 1;

theta = theta_ini;

while e ~= 0
    
    theta_old = theta;
    
    dist_all = [];
    %find distance between X and theta 
    for j = 1:m
        dist = sum(((ones(N,1)*theta(:,j)' - X').^2)');
        dist_all = [dist_all; dist];
    end
    
    %get min value of every col of dist_all
    [d, bel] = min(dist_all);
    
    %MSE
    J = sum(d);
    
    %update mean value
    for j = 1:m
        if sum(bel == j) ~= 0
            theta(:,j) = sum(X' .* ((bel == j)' * ones(1,l))) / sum(bel == j);
        end
    end
    e = sum(sum(abs(theta-theta_old)));
end

end