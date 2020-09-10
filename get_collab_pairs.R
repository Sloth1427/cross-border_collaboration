#test get collaborstion pairs

for (i in 1:nrow(pubmed_data)){
  print(i)
  if(pubmed_data$num_countries[i] > 1 & is.na(pubmed_data$author_affiliations_1[i]) == FALSE){

    test = unlist(strsplit(pubmed_data$countries_m1[i], '\\$\\$'))
    test_m <- (combn(test, 2))
    res <- c()

for (j in 1:ncol(test_m)){
  pair <- test_m[,j]
  pair <- sort(pair) #order vector
  
  res <- c(res, paste(unlist(pair), collapse = "<->"))
}

pubmed_data$collab_pairs_m1[i] <- paste(res, collapse = ", ")
  }
  
}