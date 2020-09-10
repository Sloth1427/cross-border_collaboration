#get number of total affiliations of each paper, num_affils

for (i in 1:nrow(pubmed_data)){
  print(i)
  if(is.na(pubmed_data$author_affiliations_2[i]) == FALSE){
    author_affiliations_split <- unlist(strsplit(pubmed_data$author_affiliations_1[i], '\\$\\$'))
    pubmed_data$num_affils[i] <- length(author_affiliations_split)
  }
}
