function mR = misclassificationRate(X, y)
  %this function will return the misclassification rate from knn
  
  mis = 0;
  k = 15;
  for i=1:length(X(:,1))
    Xtrain = X;
    ytrain = y;
    Xtest = Xtrain(i,:);
    ytest = ytrain(i,1);
    Xtrain(i,:) = [];
    ytrain(i,:) = [];
    
    predicted = knnClassification(Xtest, Xtrain, ytrain, k);
    
    if ytest!=predicted
      mis = mis + 1;
    end
  end
  
  mR = mis/length(X(:,1));
end