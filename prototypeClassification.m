function predicted = prototypeClassification(data, p)
    %this function will classify the data with nearest prototype classifier
 
    %initiate the list of euclidean distance
    euclidlist = [];
    
    %calculating euclidean distance between data and ytrain
    for i=1:10
        euclid = norm(data-p(i,:));
        euclidlist = [euclidlist; euclid i-1];
    end
    
    %searching the nearest neighbor of data
    [M,I] = min(euclidlist);
    
    %classify the data
    predicted = euclidlist(I(1),2);