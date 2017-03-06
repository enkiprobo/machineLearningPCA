function predicted = knnClassification(data, Xtrain, ytrain, k)
    %this function will classify the data with nearest neighbor classifier
 
    %initiate the list of euclidean distance
    euclidlist = [];
    
    %calculating euclidean distance between data and ytrain
    for i=1:length(Xtrain(:,1))
        euclid = norm(data-Xtrain(i,:));
        euclidlist = [euclidlist; euclid ytrain(i)];
    end
    
    %searching the nearest neighbor of data
    euclidlist = sortrows(euclidlist, 1);
    nclass = zeros(10,1);
    for i=1:k,
        nclass(euclidlist(i,2)+1) = nclass(euclidlist(i,2)+1) + 1;
    end
    
    %classify the data
    [M,I] = max(nclass);
    predicted = I(1)-1;