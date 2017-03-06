function pCR = percentageOfCR(L, npc)
  %this function will return percentage of correct reconstruction
  
  pCR = (sum(sum(L(:,1:npc)))/sum(sum(L)))*100;
  
endfunction