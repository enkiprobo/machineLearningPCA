function [XinPCA fV v L]= PCA(X, npc)
  %this function is for applying Principal Component Analyst to X
  %X is data in original domain
  %npc is number of principal component that will be used
  
  %make the data zero-centered
  means = mean(X);
  for i=1:length(means(1,:)),
    X(:,i) = X(:,i) - means(i);
  end
  
  %get the covariance matrix from the data
  C = cov(X);
  
  %get the eigenvector and the eigenvalue from covariance matrix 
  %with descending order from left to right
  [v L] = eig(C);
  v = fliplr(v);
  L = fliplr(L);
  
  %get the 64 best feature vector
  fV = v(:,1:npc)';
  
  %transpose the matrix 
  XinPCA = fV*X';
  
endfunction