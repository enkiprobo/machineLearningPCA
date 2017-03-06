function [f1s TP FP FN TN]= f1Score(cM)
   %this function will return f1 score based on given confussion matrix
   
   %initiate the measure tools
   %each column represent each class
   TP = zeros(10,1);
   FP = zeros(10,1);
   FN = zeros(10,1);
   TN = zeros(10,1);
   
   %calculating the measure tools
   for i=1:10,
    TP(i) = cM(i,i);
    FP(i) = sum(cM(:,i))-TP(i);
    FN(i) = sum(cM(i,:))-TP(i);
    TN(i) = sum(sum(cM))-sum(FP)-sum(FN)-TP(i);
   end
   
   %calculate pressicion
   P = sum(TP)/(sum(TP)+sum(FP));
   %calculate recall
   R = sum(TP)/(sum(TP)+sum(FN));
   %calculate f1 score
   f1s = 2*P*R/(P+R);