function CRPlot(L)
  %plotting the percentage of correct reconstruction
  
  plotcr = [];
  
  %assign the x-axis and y-axis
  for i=1:length(L)
    plotcr = [plotcr; i percentageOfCR(L,i)];
  end
  
  %plotting
  plot(plotcr(:,1),plotcr(:,2));
  
endfunction