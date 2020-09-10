all_collab_pairs <- c()

for (i in 1:nrow(pubmed_data)){
  print(i)
  
  if(pubmed_data$num_countries[i] > 1 & is.na(pubmed_data$author_affiliations_1[i]) == FALSE){
    
    temp = unlist(strsplit(pubmed_data$collab_pairs_m1[i], ', '))
    
    all_collab_pairs <- c(all_collab_pairs, temp)
  }
}

