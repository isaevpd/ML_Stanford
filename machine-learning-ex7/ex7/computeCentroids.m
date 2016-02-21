function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% K * m matrix to store values for each centroid to compute mean later
Data = zeros(K, m);

% vector to store the number of k'th centroids discovered so far
num_centroids = zeros(K, 1);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

    for i=1:length(idx)
        num_centroids(idx(i)) += 1;
        Data(idx(i), num_centroids(idx(i))) = i;
    end

    for i=1:size(Data, 1)
        Data(i, 1:num_centroids(i));
        points_data = X(Data(i, 1:num_centroids(i)), :);
        my_mean = zeros(1, n);
        for j=1:size(points_data, 2)
            j_col_mean = mean(points_data(:, j));
            my_mean(1, j) = j_col_mean;
        end
        centroids(i, :) = my_mean;


    end





% =============================================================


end

