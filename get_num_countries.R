#get num countries

for (i in 1:nrow(pubmed_data)){
  print(i)
  if(is.na(pubmed_data$author_affiliations_3[i]) == FALSE){
    country_list <- unlist(strsplit(pubmed_data$countries_m1[i], '\\$\\$'))
    pubmed_data$num_countries[i] <- length(country_list)
  }
}
