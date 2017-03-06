function plotMisclassification(X, y, m)
  %this function will make line plot of misclassification by knn and m first PC
  %X the original data
  %y the original label
  %m the selected m first PC
  
  plotmc = [];
  %assign the x-axis and y-axis
  for i=1:length(m)
    [XinPCA fV v L]= PCA(X, m(i));
    plotmc = [plotmc; m(i) misclassificationRate(XinPCA', y)];
    disp(m(i));
  end
  
  %plotting
  plot(plotmc(:,1), plotmc(:,2));
endfunction