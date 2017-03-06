function Xrev = reconstructFromPCA(fV, XinPCA)
  %reconstruct data from PCA domain to the original domain 
  %fV: feature vector(vrow)
  %XinPCA: with dimensions as rows and data as columns
  
  Xrev = fV'*XinPCA;
  
endfunction