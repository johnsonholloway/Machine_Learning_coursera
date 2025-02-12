function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
% % distances=zeros(size(X,1), 3);
% % %min_dist_col=zeros(size(X,1),1);
% % for i=[1:length(X)]
% %     
% %     distances(i,1)=sqrt((X(i,1)-centroids(1,1)).^2+(X(i,2)-centroids(1,2)).^2)
% %     distances(i,2)=sqrt((X(i,1)-centroids(2,1)).^2+(X(i,2)-centroids(2,2)).^2)
% %     distances(i,3)=sqrt((X(i,1)-centroids(3,1)).^2+(X(i,2)-centroids(3,2)).^2)
% % 
% %     
% %    [I(i),J(i)]=find(min(distances(i)))
% % % =============================================================
% % 
% % end
 
for i=1: size(X, 1);
  x = X(i,:);
  norms = zeros(K, 1);
  for centroid_i=1: K;
    norms(centroid_i) = (x - centroids(centroid_i,:)) * (x - centroids(centroid_i,:))';
  end
  [value, idx(i)] = min(norms);
end
